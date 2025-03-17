      subroutine test_can(res,res1,res2)
        use omp_lib
        integer :: res, res1, res2
        integer,allocatable :: k,k1,d
        allocate(k,k1,d)
        k=1
        k1=2
        d=1
!$omp parallel reduction(+:k)
!$omp parallel reduction(+:k1)
!$omp do schedule(dynamic) reduction(+:d)
        do i=1,10
          d=d+1
        end do
!$omp end do
        k1=k1+1
!$omp end parallel
        k=k+1
!$omp end parallel
        res=k
        res1=k1
        res2=d
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
        integer :: nt, res, res1, res2
        call omp_set_max_active_levels(.true.)
        call get_num(nt)
        call test_can(res,res1,res2)
        if( res.eq.nt+1 ) then
          print *,'pass'
        else
          print *,'NG nt=',nt,'res=',res,'res1=',res1,'res2=',res2
        endif
      end
      
