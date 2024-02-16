type t
complex:: ii = (3,4) 
end type t

type (t)::obj

obj%ii%re = 5.67
obj%ii%im = 6.34

if(SIZEOF(obj%ii%re) .ne. 4) print*,101
if(obj%ii%re .ne. 5.67) print*,102
if(obj%ii%im .ne. 6.34) print*,103
PRINT*,"PASS"
end

