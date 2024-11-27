subroutine s1
use,intrinsic::omp_lib
if (openmp_version<200011)write(6,*) "NG"
end
call s1
print *,'pass'
end
