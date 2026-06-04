      integer function func(n)
      func=n
      end function

      integer::i,n,a(10,10),func
      n=10
!$omp parallel do collapse(2) lastprivate(i)
      do i=1,func(n)
        do j=1,10
          a(j,i)=j*i
        enddo
      enddo
      if (i.ne.(func(n)+1)) then
        print*,"NG:",i
        call exit
      endif
      do i=1,func(n)
        do j=1,10
          if (a(j,i).ne.j*i) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
