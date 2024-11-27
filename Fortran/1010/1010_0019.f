c
c
c
c
c
c
      program main
      integer*4 ib(50), ier
      integer*4 :: loop=50
      integer*4 ma
      common /com1/ ma
c
      ma = 0
      ib = 0
c
!$omp parallel
!$omp do lastprivate(/com1/)
      do i=1,loop
          ma = i
          ib(i) = ma
      enddo
!$omp end do
!$omp end parallel
c
      ier = 0
      do i=1,loop
          if (ib(i).ne.i) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(/com1/) -----"
      if(ier.eq.0 .and. ma.eq.loop) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         write(*,*) "     ib=",ib
         write(*,*) "     ma=",ma,"  It must be ",loop
         write(*,*) "     ier=",ier
      endif
      stop
      end

