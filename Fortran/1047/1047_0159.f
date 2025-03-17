      program main
      integer*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50
      ia = 9
      ib = -7
      do i=1, loop
         ie(i) = 11*i/3+(-1)**i
      end do
!$omp parallel private(i)
!$omp sections reduction(max:ia,ib)
      do i=1, loop
         ia = max(ie(i)-i*13, ia)
         ib = max(i*3+ie(i), ib)
      end do
!$omp section
      do i=1, loop
         ia = max(i*17+ie(i), ia)
      end do
!$omp section
      do i=1, loop
         ib = max(ie(i)-i*11, ib)
      end do
!$omp end sections
!$omp end parallel
      ic = 9
      id = -7
      do i=1, loop
         ic = max(ie(i)-i*13, ic)
         id = max(i*3+ie(i), id)
      end do
      do i=1, loop
         ic = max(i*17+ie(i), ic)
         id = max(ie(i)-i*11, id)
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel sections riduction(max:ia,ib) -----"
      if(ia.eq.ic .and. ib.eq.id) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SECTIONS REDUCTION clause is incorrect"
         write(*,*) "     ia=",ia,"  It must be ",ic
         write(*,*) "     ib=",ib,"  It must be ",id
      endif
      stop
      end

