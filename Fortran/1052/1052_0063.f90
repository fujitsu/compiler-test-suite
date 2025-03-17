      subroutine test_can(res)
        use omp_lib
        integer :: res
        integer,allocatable :: k
        allocate(k)
        k=1
!$omp parallel reduction(+:k)
        k=k+1
!$omp end parallel
        res=k
      end subroutine test_can

      subroutine get_num(nt)
        use omp_lib
        integer :: nt
!$omp parallel
!$omp master
        nt=omp_get_num_threads()
!$omp end master
!$omp end parallel
      end subroutine get_num

      program main
        integer :: nt, res
        call get_num(nt)
        call test_can(res)
        if( res .eq. nt+1 ) then
          print *,'pass'
        else
          print *,'NG nt=',nt,'res=',res
        endif
      end
      
