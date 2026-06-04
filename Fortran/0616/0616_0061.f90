subroutine s1
character(3),save,allocatable :: aaa(:)
character(3),save,allocatable :: bbb(:)
!$omp threadprivate(aaa)
!$omp threadprivate(bbb)

!$omp parallel
allocate(aaa(2))
aaa = "abc"
!$omp end parallel

!$omp parallel
if (any(aaa/='abc'))print *,101
write(8,*)aaa,loc(aaa)

!$omp end parallel

!$omp parallel
allocate(bbb(2))
bbb = "abc"
!$omp end parallel

!$omp parallel copyin(aaa,bbb)
if (any(aaa/='abc'))print *,201
if (any(bbb/='abc'))print *,202
write(8,*)bbb,loc(bbb)

!$omp end parallel
end
call s1
print *,'pass'
end
