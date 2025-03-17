      subroutine test_can(res)
        use omp_lib
        integer :: res, a
        integer,allocatable :: b, c
        allocate(b, c)
        a=-1
        b=-1
        c=1
!$omp parallel
!$omp sections private(a) reduction(+:b) firstprivate(c)
!$omp  section
        a=1
        b=b+1
!$omp  section
        a=2
        b=b+1
!$omp  section
        a=3
        b=b+1
!$omp  section
        a=4
        b=b+1+c
!$omp end sections
!$omp end parallel
        res=0
        if( a .ne. -1 )         res=res+1
        if( b .ne. (-1 + 4 +1)) res=res+1
        if( res .ne. 0 ) print *,'NG a=',a,'b=',b,'c=',c
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
      
