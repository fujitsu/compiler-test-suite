type t
complex:: ii(3)
end type t

real::rr(3),jj(3)
type (t)::obj(3) = t(([(3.45,4.45),(5.56,6.56),(7.78,8.78)]))

rr = obj(1:3)%ii(1)%re
jj = obj(1:3)%ii(1)%im

if (SIZE( obj(1:3)%ii(2)%re) .ne. 3) print*,101
if (SIZEOF( obj(1:3)%ii(2)%re) .ne. 12) print*,102
if (any(rr .ne. 3.45)) print*,103
if (any(jj .ne. 4.45)) print*,104
PRINT*,"PASS"

end

