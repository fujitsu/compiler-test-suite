      program main
      real*8 ra, rb(50), rc(50)
      integer*4 ier
      integer*4 :: loop=50

      ra = 1.90053
      do i=1,loop
          rb(i) = i*3.074*(-1)**i
      enddo

!$omp parallel
!$omp do firstprivate(rb)
      do i=1,loop
          rc(i) = ra + rb(i)
      enddo
!$omp end do
!$omp end parallel

      ier = 0
      do i=1,loop
          if (rc(i).ne.ra+rb(i)) ier=ier+1
      enddo
      write(*,*) "----- parallel"
      write(*,*) "      do firstprivate(ra) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG   FIRSTPRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     rb=",rb
         write(*,*) "     rc=",rc
      end if

      stop
      end

