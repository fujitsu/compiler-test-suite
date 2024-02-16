type t
complex:: ii(2) 
end type t
type (t)::obj(2) = t(([(2.33,7.56),(3.21,3.45)]))
real :: jj,kk


jj = obj(1)%ii(2)%re
kk = obj(1)%ii(2)%im


if(SIZEOF(obj(1)%ii%re) .ne. 8) print*,101
if(obj(1)%ii(1)%re .ne. 2.33) print*,102
if(obj(1)%ii(1)%im .ne. 7.56) print*,103
if(jj .ne. 3.21) print*,104
if(kk .ne. 3.45) print*,105
PRINT*,"PASS"
end

