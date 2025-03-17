      program main
      integer*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50
      ia = 9
      ib = -7
      do i=1, loop
         ie(i) = 9*i/3+(-1)**i
      end do
!$omp parallel private(i)
!$omp sections reduction(min:ia,ib)
      do i=1, loop
         ia = min(ie(i)-i*5, ia)
         ib = min(i*3+ie(i), ib)
      end do
!$omp section
      do i=1, loop
         ia = min(i*7+ie(i), ia)
      end do
!$omp section
      do i=1, loop
         ib = min(ie(i)-i*9, ib)
      end do
!$omp end sections
!$omp end parallel
      ic = 9
      id = -7
      do i=1, loop
         ic = min(ie(i)-i*5, ic)
         id = min(i*3+ie(i), id)
      end do
      do i=1, loop
         ic = min(i*7+ie(i), ic)
         id = min(ie(i)-i*9, id)
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel sections reduction(min:ia,ib) -----"
      if(ia.eq.ic .and. ib.eq.id) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SECTIONS REDUCTION(MIN) clause is incorrect"
         write(*,*) "     ia=",ia,"  It must be ",ic
         write(*,*) "     ib=",ib,"  It must be ",id
      endif
      stop
      end

