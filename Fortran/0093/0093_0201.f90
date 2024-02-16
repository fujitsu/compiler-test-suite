type t
complex:: ii = (3.2,4.6)
end type t

type (t)::obj
real :: jj,kk
jj = obj%ii%re
kk = obj%ii%im

if(SIZEOF(obj%ii%re) .ne. 4) print*,101
if(obj%ii%re .ne. 3.2) print*,102
if(obj%ii%im .ne. 4.6) print*,103
if(jj .ne. 3.2) print*,104
if(kk .ne. 4.6) print*,105
if(obj%ii .ne. (3.2,4.6)) print*,106
PRINT*,"PASS"
end

