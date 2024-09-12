module m1
  type x
    integer::x1=1
  end type
end
subroutine s1
use m1
type(x),save:: v
!$omp threadprivate (v)

if (v%x1/=1) print *,101
!$omp parallel
if (v%x1/=1) print *,102
!$omp end parallel
end
subroutine s2
use m1
type(x),save:: v
!$omp threadprivate (v)

if (v%x1/=1) print *,201
!$omp parallel copyin(v)
if (v%x1/=1) print *,202
!$omp end parallel
end
subroutine s3
use m1
type(x),save:: v
!$omp threadprivate (v)

if (v%x1/=1) print *,301
!$omp single 
if (v%x1/=1) print *,302
!$omp end single copyprivate(v)
end
call s1
call s2
call s3
print *,'pass'
end
