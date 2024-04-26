subroutine s1(n2,n3)
integer b01(n2,n3),b02(n2,n3)
do k2=2,n2
do k3=3,n3
block
integer a01(k2,k3),a02(k2,k3)
if (size(a01)/=6) print *,101
if (size(a02)/=6) print *,102
if (size(b01)/=6) print *,103
if (size(b02)/=6) print *,104
end block
end do
end do
end
call s1(2,3)
print *,'pass'
end
