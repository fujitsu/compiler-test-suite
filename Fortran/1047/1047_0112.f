      program main
      integer*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50
      ia = 9
      ib = -7
      do i=1, loop
         ie(i) = 11*i/3+(-1)**(i-(i/2)*2)
      end do
!$omp parallel
!$omp do reduction(max:ia) reduction(min:ib)
      do i=1, loop
         ia = max(ie(i)-i*13, ia)
         ib = min(i*3+ie(i), ib)
      end do
!$omp end do
!$omp end parallel
      ic = 9
      id = -7
      do i=1, loop
         ic = max(ie(i)-i*13, ic)
         id = min(i*3+ie(i), id)
      end do

      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do reduction(max:ia) reduction(min:ib) -----"
      if(ia.eq.ic .and. ib.eq.id) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(MIN|MAX) clause is incorrect"
         write(*,*) "     MAX  ia=",ia,"  It must be ",ic
         write(*,*) "     MIN  ib=",ib,"  It must be ",id
      end if
      stop
      end

