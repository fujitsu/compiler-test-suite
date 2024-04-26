subroutine s1
!$omp parallel
n2=2
n3=3
block
integer a01(n2,n3),a02(n2,n3)
n2=-2
n3=-3
end block
if (n2/=-2) print *,901
if (n3/=-3) print *,902
!$omp end parallel
end
call omp_set_num_threads(1)
call s1
print *,'pass'
end
