      program main
      real*8 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50

      ia = 9
      ib = -7
      do i=1, loop
         ie(i) = 7.9*i/13.1*(-1)**i
      end do

!$omp parallel
!$omp do reduction(min:ia,ib)
      do i=1, loop
         ia = min(ie(i)*i*0.53, ia)
         ib = min(i*1.45*ie(i), ib)
      end do
!$omp end do
!$omp end parallel

      ic = 9
      id = -7
      do i=1, loop
         ic = min(ie(i)*i*0.53, ic)
         id = min(i*1.45*ie(i), id)
      end do

      write(*,*) "----- parallel"
      write(*,*) "      do reduction(min:ia,ib) -----"
      if(abs(ia-ic).le.abs(ic)*1e-10 .and.
     +   abs(ib-id).le.abs(ic)*1e-10) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION(MIN) clause is incorrect"
         write(*,*) "     a=",ia,"  It must be ",ic
         write(*,*) "     b=",ib,"  It must be ",id
      endif

      stop
      end

