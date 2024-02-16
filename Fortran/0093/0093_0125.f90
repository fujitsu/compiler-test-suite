type t
integer:: ii = 3,jj = 1
complex :: arr(4)
end type t

type (t)::obj

obj%arr(obj%jj+obj%ii)%re = 3.77766666
obj%arr(obj%jj+obj%ii)%im = 4.5454

if(SIZE(obj%arr%re) .ne. 4) print*,101
if(SIZEOF(obj%arr%im) .ne. 16) print*,102
if(UBOUND(obj%arr%re,1) .ne. 4) print*,103
if(LBOUND(obj%arr%im,1) .ne. 1) print*,104
if(obj%arr(obj%jj+obj%ii)%re .ne. 3.77766666) print*,105
if(obj%arr(obj%jj+obj%ii)%im .ne. 4.5454) print*,106
PRINT*,"PASS"

end

