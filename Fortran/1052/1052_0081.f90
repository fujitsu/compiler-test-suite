      subroutine test_can(res,nt)
        use omp_lib
        integer :: res, nt
        integer,allocatable :: a, b, c, k, k1, d
        allocate(a, b, c, k, k1, d)
        a=-1
        b=-1
        c=1
        k=1
        k1=2
        d=-1
!$omp parallel reduction(+:k)
!$omp sections lastprivate(a) reduction(+:b) firstprivate(c)
!$omp  section
!$omp   parallel reduction(+:k1)
!$omp     sections reduction(+:d)
!$omp       section
        d=d+1
!$omp       section
        d=d+2
!$omp     end sections
        k1=k1+1
!$omp   end parallel
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
        k=k+1
!$omp end parallel
        res=0
        if( a .ne. 4 )          res=res+1
        if( b .ne. (-1 + 4 +1)) res=res+1
        if( k .ne. nt+1 )       res=res+1
        if( k1.ne. nt+2 )       res=res+1
        if( d .ne. 2 )          res=res+1
        if( res .ne. 0 ) &
          print *,'NG nt=',nt,'a=',a,'b=',b,'c=',c, &
                  'k=',k,'k1=',k1,'d=',d
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
        call omp_set_max_active_levels(.true.)
        call get_num(nt)
        call test_can(res,nt)
        if( res .eq. 0 ) then
          print *,'pass'
        else
          print *,'NG nt=',nt,'res=',res
        endif
      end
      
