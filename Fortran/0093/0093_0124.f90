type t
integer:: ii = 3
end type t

type (t)::obj

integer ::jj=1
complex :: arr(4)

arr(jj+obj%ii)%re = 3
arr(jj+obj%ii)%im = 4

if(SIZE(arr%re) .ne. 4) print*,101
if(SIZEOF(arr%im) .ne. 16) print*,102
if(UBOUND(arr%re,1) .ne. 4) print*,103
if(LBOUND(arr%im,1) .ne. 1) print*,104
if(arr(jj+obj%ii)%re .ne. 3) print*,105
if(arr(jj+obj%ii)%im .ne. 4) print*,106
PRINT*,"PASS"
end

