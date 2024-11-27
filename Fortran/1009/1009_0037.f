      program main
!$omp parallel
      call sub
!$omp end parallel
      write(*,*)"OK"
      end

      subroutine sub
      if (.true.) then
!$OMP BARRIER
      else
!$OMP BARRIER
      endif

      return
      end
