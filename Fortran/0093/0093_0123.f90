implicit none
type t
integer:: ii = 3,jj = 1
complex :: arr(4)
real :: kk,ll
end type t

type (t)::obj


obj%arr(obj%jj+obj%ii) =(3.56,4.75)
obj%kk = obj%arr(obj%jj+obj%ii)%re
obj%ll = obj%arr(obj%jj+obj%ii)%im

if(SIZE (obj%arr%re) .ne. 4) print*,101
if(SIZEOF(obj%arr%im) .ne. 16) print*,102
if(UBOUND(obj%arr%re,1) .ne. 4) print*,103
if(LBOUND(obj%arr%im,1) .ne. 1) print*,104
if( obj%arr(obj%jj+obj%ii)%re .ne. 3.56) print*,105
if( obj%arr(obj%jj+obj%ii)%im .ne. 4.75) print*,106
if( obj%kk .ne. 3.56) print*,107
if( obj%ll .ne. 4.75) print*,108
PRINT*,"PASS"
end

