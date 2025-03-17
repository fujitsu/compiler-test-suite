      program main
      integer*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50
      ia = 0
      ib = 0
      do i=1, loop
         ie(i) = 13*i/3+(-1)**i
      end do
!$omp parallel
!$omp sections reduction(+:ia,ib)
      call sub1(ia, ib, ie, loop)
!$omp section
      call sub2(ia, ie, loop)
!$omp section
      call sub3(ib, ie, loop)
!$omp end sections
!$omp end parallel
      ic = 0
      id = 0
      call sub1(ic, id, ie, loop)
      call sub2(ic, ie, loop)
      call sub3(id, ie, loop)
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(+:ia,ib) -----"
      if(ia.eq.ic .and. ib.eq.id) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(+) clause is incorrect"
         write(6,*) "     ia=", ia, "  It must be ",ic
         write(6,*) "     ib=", ib, "  It must be ",id
      endif
      stop
      end

      subroutine sub1(ia, ib, ie, loop)
      integer*4 ia, ib, ie(50)
      integer*4 loop
      do i=1, loop
         ia = ia-i*2
         ib = ib+i*3+ie(i)
      end do
      return
      end

      subroutine sub2(ia, ie, loop)
      integer*4 ia, ie(50)
      integer*4 loop
      do i=1, loop
         ia = ia+ie(i)
      end do
      return
      end

      subroutine sub3(ib, ie, loop)
      integer*4 ib, ie(50)
      integer*4 loop
      do i=1, loop
         ib = ib-i*ie(i)
      end do
      return
      end
