implicit none
type ty
complex:: cmp1(4) = (2.1,5.2)
end type ty
type(ty) :: o
o%cmp1%re = 3.78
o%cmp1%im = 4.89
print*,o%cmp1%re
print*,o%cmp1%im
print*,o%cmp1(2:4)%re
print*,o%cmp1(2:4)%im
print*,o%cmp1(3)%re
print*,o%cmp1(3)%im
print*,"pass"
end

