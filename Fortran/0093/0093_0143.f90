type ty
complex:: ii
end type

type(ty),parameter :: obj = ty((3,4))
        
real:: rr = obj%ii%re
real:: pp = obj%ii%im

if ( SIZEOF(obj) .ne. 8) print*,101
if ( obj%ii%re .ne.  3) print*,102
if ( obj%ii%im .ne.  4) print*,103
if ( rr .ne. 3) print*,104
if ( pp .ne. 4) print*,105
PRINT *, "PASS"
end
