      program main
      integer*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50
      ia = 0
      ib = 0
      do i=1, loop
         ie(i) = 13*i/3*(-1)**i
      end do
!$omp parallel
!$omp do reduction(+:ia,ib)
      do i=1, loop
         ia = ia-i*2
         ib = ib+i*3+ie(i)
      end do
!$omp end do
!$omp end parallel
      ic = 0
      id = 0
      do i=1, loop
         ic = ic-i*2
         id = id+i*3+ie(i)
      end do

      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do reduction(+:ia,ib) -----"
      if(ia.eq.ic .and. ib.eq.id) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(+) clause is incorrect"
         write(*,*) "     ia=",ia,"  It must be ",ic
         write(*,*) "     ib=",ib,"  It must be ",id
      endif
      stop
      end

