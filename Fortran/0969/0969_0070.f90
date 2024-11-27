intrinsic :: float
intrinsic :: iabs

real(kind = 4), parameter :: rr04_pa01 = 4.0
real(kind = 8), parameter :: rr08_pa01 = 8.0

print *,float(nint(rr04_pa01))
print *,float(nint(rr08_pa01))

print *,kind(float(nint(rr04_pa01)))
print *,kind(float(nint(rr08_pa01)))

print *,iabs(nint(rr04_pa01))
print *,iabs(nint(rr08_pa01))

print *,kind(iabs(nint(rr04_pa01)))
print *,kind(iabs(nint(rr08_pa01)))

end
