subroutine s1
integer omp_get_thread_num
common /com1/ k(2)
equivalence (k(2),kk)
!$omp threadprivate(/com1/)

!$omp parallel
k(1)=omp_get_thread_num()+1
kk=omp_get_thread_num()+2
if (any(k/=omp_get_thread_num()+[1,2])) print *,1011,k
if (   (kk/=omp_get_thread_num()+2)) print *,1012,kk
!$omp end parallel
call chk
end
call s1
print *,'pass'
end
subroutine chk
integer omp_get_thread_num
common /com1/ kk(2)
integer       k(2)
equivalence (k,kk)
!$omp threadprivate(/com1/)

!$omp parallel
if (any(kk/=omp_get_thread_num()+[1,2])) print *,2011,kk
!$omp end parallel
end
