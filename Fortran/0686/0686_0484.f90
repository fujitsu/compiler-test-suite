    program omp
     integer(4)::a(5)=(/-2,-1,0,2,3/)
      call sub(a,5)
      if (any(a/=(/-1,0,1,3,4/))) print *,a
      print *,'pass'
    end program

    subroutine sub(a,n)
     integer(4)::a(n)
     integer(4)::b(n)
     i=0
      b=a
      call OMP_SET_MAX_ACTIVE_LEVELS(.false.)
!$omp parallel
!$omp parallel

!$omp end parallel
!$omp end parallel

!$omp parallel if(all(b==(/-2,-1,0,2,3/))),num_threads(sum(b))

!$omp parallel
!$omp parallel
!$omp atomic
      i=i+1
!$omp end parallel
!$omp end parallel

!$omp do schedule(static,sum(b)) 
      do i=1,5
        a(i)=a(i)+1
      end do
!$omp enddo
!$omp end parallel
    end subroutine
