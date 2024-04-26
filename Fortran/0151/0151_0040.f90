subroutine s1
!$omp parallel private(n2,n3)
n2=2
n3=3
block
integer a01(n2,n3),a02(n2,n3)
n2=-2
n3=-3
if (size(a01)/=6) print *,101
if (size(a02)/=6) print *,102
end block
!$omp end parallel
end
call s1
print *,'pass'
end
