      program main
      integer*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50
      ia = -1
      ib = 3
      do i=1, loop
         ie(i) = mod(1+13*i/11+i*(-1)**i,7)
         if ( ie(i).ge.0 ) ie(i)=ie(i)+1
      end do
!$omp parallel
!$omp sections reduction(*:ia,ib)
      call sub1(ia, ib, ie, loop)
!$omp section
      call sub2(ia, ie, loop)
!$omp section
      call sub3(ib, loop)
!$omp end sections
!$omp end parallel
      ic = -1
      id = 3
      call sub1(ic, id, ie, loop)
      call sub2(ic, ie, loop)
      call sub3(id, loop)
      write(*,*) "----- test --"
      write(*,*) "      parallel sections  reduction(*:ia,ib) -----"
      if(ia.eq.ic .and. ib.eq.id) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SECTIONS REDUCTION clause is incorrect"
         write(6,*) "     ia=", ia, "  It must be ",ic
         write(6,*) "     ib=", ib, "  It must be ",id
      endif
      stop
      end

      subroutine sub1(ia, ib, ie, loop)
      integer*4 ia, ib, ie(50)
      integer*4 loop
      do i=1, loop, 3
         ia = ia * (mod(i,5)+1)
         ib = ib * ie(i)
      end do
      return
      end

      subroutine sub2(ia, ie, loop)
      integer*4 ia, ie(50)
      integer*4 loop
      do i=1, loop, 4
         ia = ia * (i+ie(i))
      end do
      return
      end

      subroutine sub3(ib, loop)
      integer*4 ib
      integer*4 loop
      do i=1, loop, 4
         ib = ib * (mod(i,7)+1)
      end do
      return
      end
