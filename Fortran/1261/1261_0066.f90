      integer function func(n)
      integer n
      integer i,s
      s=0
      do i=1,n
        s=s+i
      end do
      func=s
      end function
 
      integer::i,a(10,10),func
      a=0
      i=0
!$omp parallel do lastprivate(i)
      do i=1,10,func(4)-9
        do j=1,10
          a(j,i)=j*i
        enddo
      enddo
      if (i.ne.11) then 
        print*,"NG i:",i
        call exit
      endif
      do i=1,10
        do j=1,10
          if (a(j,i).ne.j*i) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
