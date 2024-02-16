type t
integer:: ii = 3
end type t

type (t)::obj

integer ::jj=1
complex :: arr(4)
real :: rr,ii

arr(jj+obj%ii) =(3,4)
rr = arr(jj+obj%ii)%re
ii = arr(jj+obj%ii)%im

if(SIZE (arr%re) .ne. 4) print*,101
if(SIZEOF(arr%im) .ne. 16) print*,102
if(UBOUND(arr%re,1) .ne. 4) print*,103
if(LBOUND(arr%im,1) .ne. 1) print*,104
if( arr(jj+obj%ii)%re .ne. 3) print*,105
if( arr(jj+obj%ii)%im .ne. 4) print*,106
if( rr .ne. 3) print*,107
if( ii .ne. 4) print*,108
PRINT*,"PASS"
end

