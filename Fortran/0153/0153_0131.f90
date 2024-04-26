subroutine s1
integer,save:: k
!$omp threadprivate (k)
call ss0
call ss1
contains
subroutine ss1
integer a(k)
integer omp_get_thread_num
if (size(a)/=omp_get_thread_num()) print *,101,size(a),omp_get_thread_num(),k
a=1
if (any(a/=1)) print *,102,a
end subroutine ss1
subroutine ss0
integer omp_get_thread_num
k=omp_get_thread_num()
write(1,*)1001,k
end subroutine 
end
call omp_set_num_threads(1)

!$omp parallel
call s1
!$omp end parallel
print *,'pass'
end
