      program main
      complex*8 ca, cb(50), cc(50)
      integer*4 ier
      integer*4 :: loop=50
      ca = (1.90053,0.9917)
      do i=1,loop
          cb(i) = cmplx(i*3.074*(-1)**i,i/0.073)
      enddo
!$omp parallel
!$omp do firstprivate(cb)
      do i=1,loop
          cc(i) = ca + cb(i)
      enddo
!$omp end do
!$omp end parallel
      ier = 0
      do i=1,loop
          if (cc(i).ne.ca+cb(i)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(cb) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     cb=",cb
         write(*,*) "     cc=",cc
      end if
      stop
      end

