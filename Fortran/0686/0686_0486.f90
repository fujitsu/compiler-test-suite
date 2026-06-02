    program omp
     integer(4)::a(5)=(/-2,-1,0,2,3/)
      call sub(a,5)
      print *,'pass'
    end program

    subroutine sub(a,n)
     integer(4)::a(n)
      call OMP_SET_MAX_ACTIVE_LEVELS(.false.)
     i=0
!$omp parallel firstprivate(a)

!$omp parallel
!$omp parallel
!$omp atomic
      i=i+1
!$omp end parallel
!$omp end parallel
!$omp single
!$omp parallel if(all(a==(/-2,-1,0,2,3/))),num_threads(sum(a))
!$omp do schedule(static,sum(a)) 
      do i=1,5
        a(i)=a(i)+1
      end do
!$omp enddo
!$omp end parallel
!$omp end single
!$omp end parallel
    end subroutine
