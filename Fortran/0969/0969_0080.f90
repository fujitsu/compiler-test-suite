intrinsic :: allocated
intrinsic :: ubound
integer, allocatable :: a
integer, parameter :: i = ubound((/1/), 1, 4)
print *,ubound((/i/), 1, 4)
print *,allocated(scalar = a)


end
