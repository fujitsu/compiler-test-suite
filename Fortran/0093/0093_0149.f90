type t
integer:: ii = 3
end type t

type (t)::obj

integer ::jj=1
complex,parameter :: arr(4) = (3.45,7.88)
real :: rr,ii

rr = arr(jj+obj%ii)%re
ii = arr(jj+obj%ii)%im

if (rr .ne. 3.45) print*,101
if (ii .ne. 7.88) print*,102
PRINT*,"PASS"

end

