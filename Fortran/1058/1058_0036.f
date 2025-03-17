      program main
      real*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50

      ia = 0.0
      ib = 0.0
      do i=1, loop
         ie(i) = 13.0*i/3.0*(-1)**i
      end do

!$omp parallel
!$omp do reduction(+:ia,ib)
      do i=1, loop
         ia = ia-i*ie(i)
         ib = ib+i*3+ie(i)
      end do
!$omp end do
!$omp end parallel

      ic = 0.0
      id = 0.0
      do i=1, loop
         ic = ic-i*ie(i)
         id = id+i*3+ie(i)
      end do

      write(*,*) "----- parallel"
      write(*,*) "      do reduction(+:ia,ib) -----"
      if(abs(ia-ic).le.abs(ic)*1e-4 .and.
     +   abs(ib-id).le.abs(id)*1e-4) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION(+) clause is incorrect"
         write(*,*) "     ia=",ia,"  It must be ",ic
         write(*,*) "     ib=",ib,"  It must be ",id
      endif

      stop
      end

