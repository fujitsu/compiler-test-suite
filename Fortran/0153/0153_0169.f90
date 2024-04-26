module m1
common /cmn/ i_cmn
bind(c,name='i') /cmn/
!$omp threadprivate(/cmn/)
end 

subroutine s1
common /cmn/ i_cmn
bind(c,name='i') /cmn/
integer omp_get_thread_num
!$omp threadprivate(/cmn/)
i_cmn=  omp_get_thread_num()
end

subroutine s2
use m1
integer omp_get_thread_num
if (i_cmn/=  omp_get_thread_num()) print *,101,i_cmn
end

!$omp parallel
call s1
call s2
!$omp end parallel
print *,'pass'
end
