type t
complex:: ii
real :: jj,kk
end type t

type (t)::obj

obj %ii = (3,4)
obj%jj = obj%ii%re
obj%kk = obj%ii%im

if(SIZEOF(obj%ii) .ne. 8) print*,101
if(obj%ii%re .ne. 3) print*,102
if(obj%ii%im .ne. 4) print*,103
if(obj%jj .ne. 3) print*,104
if(obj%kk .ne. 4) print*,105
PRINT*,"PASS"


end

