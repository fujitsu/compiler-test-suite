      program main
      integer*4 ia, ib, ic, id
      ia = 0
      ib = 0
!$omp parallel
!$omp sections reduction(+:ia,ib)
!$omp section
      call sub2(ia)
!$omp section
      call sub3(ib)
!$omp end sections
!$omp end parallel
      ic = 0
      id = 0
      call sub2(ic)
      call sub3(id)
      if(ia.eq.ic .and. ib.eq.id) then
         write(*,*) "OK"
      else
         write(*,*) "NG"
      endif
      end

      subroutine sub2(ia)
      integer*4 ia
      do i=1, 50
         ia = ia+1
      end do
      return
      end

      subroutine sub3(ib)
      integer*4 ib
      do i=1, 50
         ib = ib+i
      end do
      return
      end
