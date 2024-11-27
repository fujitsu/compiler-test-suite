intrinsic :: allocated
integer, allocatable :: a, b(:)

allocate(a)
allocate(b(1))

print *,allocated(a)
print *,allocated(b)

print *,allocated(scalar  = a)
print *,allocated(SCALAR  = a)
print *,allocated(ScAlAr  = a)

print *,allocated(array   = b)
print *,allocated(ARRAY   = b)
print *,allocated(aRrAy   = b)

end
