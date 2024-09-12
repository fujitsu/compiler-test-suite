module m1
use iso_fortran_env
contains
pure function f() result(r)
character(100):: r
r=compiler_version()
end
end
use m1
character(100),parameter:: r =compiler_version()
if (f()/=r) print *,101
print *,'pass'
end
