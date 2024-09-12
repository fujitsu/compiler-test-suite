intrinsic :: index
intrinsic :: len
intrinsic :: isign
intrinsic :: mod
intrinsic :: iabs
intrinsic :: nint
intrinsic :: idnint

type ty01
 procedure(index) , pointer, nopass :: pindexp  => null()
 procedure(len)   , pointer, nopass :: plenp    => null()
 procedure(isign) , pointer, nopass :: pisignp  => null()
 procedure(mod)   , pointer, nopass :: pmodp    => null()
 procedure(iabs)  , pointer, nopass :: piabsp   => null()
 procedure(nint)  , pointer, nopass :: pnintp   => null()
 procedure(idnint), pointer, nopass :: pidnintp => null()
end type

real (kind = 4), parameter :: r4 = 4.0
real (kind = 8), parameter :: r8 = 4.0

type (ty01) :: t01

t01 = ty01(pindexp  = index )

if (t01%pindexp('test', 'est').ne.index ('test', 'est')) print *,'index  error'

t01 = ty01(plenp    = len   )

if (t01%plenp('test').ne.len ('test')) print *,'len  error'

t01 = ty01(pisignp  = isign )

if (t01%pisignp(4, 2).ne.isign (4, 2)) print *,'isign  error'

t01 = ty01(pmodp    = mod   )

if (t01%pmodp(4, 2).ne.mod (4, 2)) print *,'mod  error'

t01 = ty01(piabsp   = iabs  )

if (t01%piabsp(1).ne.iabs (1)) print *,'iabs  error'

t01 = ty01(pnintp   = nint  )

if (t01%pnintp(r4).ne.nint (r4)) print *,'nint  error'

t01 = ty01(pidnintp = idnint)

if (t01%pidnintp(r8).ne.idnint (r8)) print *,'idnint  error'

print *,'pass'

end
