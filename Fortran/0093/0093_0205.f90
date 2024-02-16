type t
complex:: ii(2) = (3,4)
end type t

type (t)::obj(2)

obj(1)%ii%re =4.56        
obj(1)%ii%im =5.32

if(SIZEOF(obj(1)%ii%re) .ne. 8) print*,101
if(any(obj(1)%ii%re .ne. 4.56)) print*,102
if(any(obj(1)%ii%im .ne. 5.32)) print*,103
PRINT*,"PASS"
end

