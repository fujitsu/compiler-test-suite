      program main
      integer*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50
      ia = 9
      ib = -7
      do i=1, loop
         ie(i) = 11*i/3+(-1)**i
      end do
!$omp parallel
!$omp sections reduction(max:ia,ib)
      call sub1(ia, ib, ie, loop)
!$omp section
      call sub2(ia, ie, loop)
!$omp section
      call sub3(ib, ie, loop)
!$omp end sections
!$omp end parallel
      ic = 9
      id = -7
      call sub1(ic, id, ie, loop)
      call sub2(ic, ie, loop)
      call sub3(id, ie, loop)
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

      subroutine sub1(ia, ib, ie, loop)
      integer*4 ia, ib, ie(50)
      integer*4 loop
      do i=1, loop
         ia = max(ie(i)-i*13, ia)
         ib = max(i*3+ie(i), ib)
      end do
      return
      end

      subroutine sub2(ia, ie, loop)
      integer*4 ia, ie(50)
      integer*4 loop
      do i=1, loop
         ia = max(i*17+ie(i), ia)
      end do
      return
      end

      subroutine sub3(ib, ie, loop)
      integer*4 ib, ie(50)
      integer*4 loop
      do i=1, loop
         ib = max(ie(i)-i*11, ib)
      end do
      return
      end
