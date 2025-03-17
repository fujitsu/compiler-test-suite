      program main
      real*4 ra, rb(50), rc(50)
      integer*4 ier
      integer*4 :: loop=50

      ra = 3.7
      rb = 0.0
      rc = 0.0

!$omp parallel
!$omp do firstprivate(ra)
      do i=1,loop
          rb(i) = ra * i
      enddo
!$omp end do
!$omp end parallel

      do i=1,loop
          rc(i) = ra * i
      enddo
      ier = 0
      do i=1,loop
          if (rb(i).ne.rc(i)) then
              ier=ier+1
              write(*,*) "i=",i,"  rb(i)=",rb(i),"  rc(i)=",rc(i)
          endif
      enddo
      write(*,*) "----- parallel"
      write(*,*) "      do firstprivate(ra) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG   FIRSTPRIVATE clause is not active"
         write(*,*) "     rb=",rb
         write(*,*) "     rc=",rc
         write(*,*) "     ier=",ier
      endif

      stop
      end

