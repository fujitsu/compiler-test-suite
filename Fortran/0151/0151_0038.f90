subroutine s1(n2,n3)
integer b01(n2,n3),b02(n2,n3)
!$omp parallel
block
integer a01(n2,n3),a02(n2,n3)
if (size(a01)/=6) print *,101
if (size(a02)/=6) print *,102
if (size(b01)/=6) print *,103
if (size(b02)/=6) print *,104
end block
!$omp end parallel
end
call s1(2,3)
print *,'pass'
end
