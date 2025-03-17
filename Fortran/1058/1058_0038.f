      program main
      real*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50

      ia = -1
      ib = 3
      do i=1, loop
         ie(i) = (mod(13*i,7)+1)*(-1)**i/1.37
      end do

!$omp parallel
!$omp do reduction(*:ia,ib)
      do i=1, loop, 3
         ia = ia * (mod(i,3)+1)*ie(i)
         ib = ib * ie(i)
      end do
!$omp end do
!$omp end parallel

      ic = -1
      id = 3
      do i=1, loop, 3
         ic = ic * (mod(i,3)+1)*ie(i)
         id = id * ie(i)
      end do
      write(*,*) "----- parallel"
      write(*,*) "      do reduction(*:ia,ib) -----"
      if(abs(ia-ic).le.abs(ic)*1e-4 .and.
     +   abs(ib-id).le.abs(id)*1e-4) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(*) clause is incorrect"
         write(*,*) "     ia=",ia,"  It must be ",ic
         write(*,*) "     ib=",ib,"  It must be ",id
      endif

      stop
      end

