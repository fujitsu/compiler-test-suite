module m1
common /com/i,j
!$omp threadprivate (/com/)
contains
subroutine s
i=i+1
j=j+1
end subroutine
end
use m1
i=1
j=2
call s
print *,'pass'
end
