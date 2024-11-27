
intrinsic :: index
intrinsic :: len
intrinsic :: isign
intrinsic :: mod
intrinsic :: iabs
intrinsic :: nint
intrinsic :: idnint

procedure(index) , pointer :: pindexp
procedure(len)   , pointer :: plenp
procedure(isign) , pointer :: pisignp
procedure(mod)   , pointer :: pmodp
procedure(iabs)  , pointer :: piabsp
procedure(nint)  , pointer :: pnintp
procedure(idnint), pointer :: pidnintp

real (kind = 4), parameter :: r4 = 4.0
real (kind = 8), parameter :: r8 = 4.0

pindexp  => index
plenp    => len
pisignp  => isign
pmodp    => mod
piabsp   => iabs
pnintp   => nint
pidnintp => idnint

print *, pindexp('test', 'est')
print *,  index ('test', 'est')

print *, plenp('test')
print *,  len ('test')

print *, pisignp(4, 2)
print *,  isign (4, 2)

print *, pmodp(4, 2)
print *,  mod (4, 2)

print *, piabsp(1)
print *,  iabs (1)

print *, pnintp(r4)
print *,  nint (r4)

print *, pidnintp(r8)
print *,  idnint (r8)

end
