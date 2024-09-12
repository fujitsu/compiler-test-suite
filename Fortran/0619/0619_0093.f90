module m1
character(3),save,allocatable :: aaa
character(:),save,allocatable :: bbb
!$omp threadprivate(aaa)
!$omp threadprivate(bbb)
end
subroutine s1
use m1

!$omp parallel
allocate(aaa)
aaa = "abc"
!$omp end parallel

!$omp parallel
if (aaa/='abc')print *,101
write(1,*)aaa,loc(aaa)
!$omp end parallel

!$omp parallel
allocate(character(3)::bbb)
bbb = "abc"
!$omp end parallel

!$omp parallel 
if (bbb/='abc')print *,201
write(1,*)bbb,loc(bbb)
!$omp end parallel
end

call s1
print *,'pass'
end
