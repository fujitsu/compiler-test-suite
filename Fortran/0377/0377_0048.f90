procedure(nint), pointer :: pnintp
real :: r04
r04 = 4.0
pnintp => nint

if (kind(pnintp(r04)).ne.kind(nint(1.0))) print *,'11'

print *,'pass'

end
