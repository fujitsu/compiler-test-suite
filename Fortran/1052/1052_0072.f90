      subroutine test_can(res)
        use omp_lib
        integer :: res
        integer,allocatable :: a
        allocate(a)
        a=-1
!$omp parallel
!$omp sections private(a)
!$omp  section
        a=1
!$omp  section
        a=2
!$omp  section
        a=3
!$omp  section
        a=4
!$omp end sections
!$omp end parallel
        res=0
        if( a .ne. -1 )          res=res+1
        if( res .ne. 0 ) print *,'NG a=',a
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
        if( res .eq. 0 ) then
          print *,'pass'
        else
          print *,'NG nt=',nt,'res=',res
        endif
      end
      
