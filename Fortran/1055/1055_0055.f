      program main
      integer*4 ier
      integer*4 :: loop=50
      character*8 sa(50), sb(50)
      do i=1,loop
          write(sa(i),"(i3.3)") i
      enddo
      sb = ' '
!$omp parallel
!$omp do firstprivate(sa)
      do i=1,loop
          sb(i) = sa(i)
          write(sa(i),"(i3.3)") i*2
      enddo
!$omp end do
!$omp end parallel
      ier = 0
      do i=1,loop
          if (sb(i).ne.sa(i)) then
              write(*,*) "i=",i," sb(i)=",sb(i)," sa(i)=",sa(i)
              ier=ier+1
          endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(sa) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  FIRSTPRIVATE clause is not active!"
         write(*,*) "     ier=",ier
         write(*,*) "     sa=",sa
         write(*,*) "     sb=",sb
      endif
      stop
      end

