      subroutine test_can(res)
        use omp_lib
        integer :: res
        integer :: k(100), no
        k=-1
!$omp parallel private(no)
        no=omp_get_thread_num()+1
        k(no)=k(no)+2
!$omp end parallel
        res=0
        do i=1,100
          if( k(i) .eq. 1 ) res=res+1 
        enddo
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
        if( res .eq. nt ) then
          print *,'pass'
        else
          print *,'NG nt=',nt,'res=',res
        endif
      end
      
