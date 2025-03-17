      subroutine test_can(res)
        use omp_lib
        integer :: res(4)
        integer,allocatable :: k,k1,d,d1
        allocate(k,k1,d,d1)
        k=1
        k1=2
        d=1
        d1=1
!$omp parallel reduction(+:k)
!$omp do schedule(dynamic) reduction(+:d)
        do i=1,10
          d=d+1
!$omp parallel reduction(+:k1)
!$omp do schedule(dynamic) reduction(+:d1)
          do j=1,10
            d1=d1+1
          end do
!$omp end do
          k1=k1+1
!$omp end parallel
        end do
!$omp end do
        k=k+1
!$omp end parallel
        res(1)=k
        res(2)=k1
        res(3)=d
        res(4)=d1
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
        integer :: nt, res(4)
        call omp_set_max_active_levels(.true.)
        call get_num(nt)
        call test_can(res)
        if( res(1) .eq. nt+1 .and.  &
            res(3) .eq. 11  ) then
          print *,'pass'
        else
          print *,'NG nt=',nt,'res(1-4)=',res
        endif
      end
      
