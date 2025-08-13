subroutine s1
character(3),save,allocatable :: aaa
!$omp threadprivate(aaa)

!$omp parallel
allocate(aaa)
aaa = "abc"
!$omp end parallel

!$omp parallel
if (aaa/='abc')print *,101
write(11,*)aaa,loc(aaa)
!$omp end parallel

end

call s1
print *,'pass'
end
