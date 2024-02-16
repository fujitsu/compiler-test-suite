type ty
complex,allocatable :: aa
complex :: bb
real::rr,ii,jj,kk
end type

type(ty) :: obj
allocate(obj%aa)
obj%aa = ( 3.2,4.2)
obj%bb = ( 5.2,8.2)

obj%rr = obj%aa%re
obj%ii = obj%aa%im
obj%aa%re = 6.2
obj%aa%im = 7.2

obj%jj = obj%bb%re
obj%kk = obj%bb%im
obj%bb%re = 8.2
obj%bb%im = 9.2

if (SIZEOF(obj%aa%re) .ne. 4) print*,101
if (SIZEOF(obj%bb%re) .ne. 4) print*,102
if (obj%rr  .ne. 3.2) print*,103
if (obj%ii  .ne. 4.2) print*,104
if (obj%aa .ne. (6.2,7.2)) print*,105
if (obj%jj  .ne. 5.2) print*,106
if (obj%kk  .ne. 8.2) print*,107
if (obj%bb .ne. (8.2,9.2)) print*,108
print*,"PASS"

end

