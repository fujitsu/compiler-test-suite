module m1
character(3),save,allocatable :: aaa(:)
character(:),save,allocatable :: bbb(:)
!$omp threadprivate(aaa)
!$omp threadprivate(bbb)
end
subroutine s1
use m1

!$omp parallel
allocate(aaa(2))
aaa = "abc"
!$omp end parallel

!$omp parallel
if (any(aaa/='abc'))print *,101
write(9,*)aaa,loc(aaa)
!$omp end parallel

!$omp parallel
allocate(character(3)::bbb(2))
bbb(:) = "abc"
!$omp end parallel

!$omp parallel copyin(aaa,bbb)
if (any(bbb/='abc'))print *,201
if (any(aaa/='abc'))print *,202
write(9,*)bbb,loc(bbb)
!$omp end parallel
end

call s1
print *,'pass'
end
