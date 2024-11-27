
intrinsic :: dprod
intrinsic :: idnint
intrinsic :: nint

real (kind = 4), parameter :: r4 = 1.0
real (kind = 8), parameter :: r8 = 1.0

print *,dprod(r4, r4)
print *,idnint(r8)
print *,nint(r4)


end
subroutine sub(a)
 procedure() :: a
end subroutine
