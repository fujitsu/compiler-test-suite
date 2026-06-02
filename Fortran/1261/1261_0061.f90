      integer,parameter::n=10
      integer::i,a(n,n)
      a=0
      i=0
!$omp parallel do lastprivate(i)
      do i=size((/(ii,ii=1,n)/))-9,10
        do j=1,n
          a(j,i)=j*i
        enddo
      enddo
      if (i.ne.n+1) then 
        print*,"NG i:",i
        call exit
      endif
      do i=1,n
        do j=1,n
          if (a(j,i).ne.j*i) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
