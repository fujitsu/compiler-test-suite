subroutine s1
integer,save:: a01
!$omp threadprivate(a01)
integer ::omp_get_thread_num

!$omp parallel 
a01=omp_get_thread_num()+300
!$omp end parallel
!$omp parallel 
block
if (a01/=omp_get_thread_num()+300) print *,103,a01
end block
!$omp end parallel
end
call s1
print *,'pass'
end
