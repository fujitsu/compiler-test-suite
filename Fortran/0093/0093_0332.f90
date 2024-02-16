type ty
real,allocatable :: rr(:)
end type

complex :: cc(2) = [(1,2),(3,4)]
type(ty) :: obj
obj = ty(cc%im)
if(size(obj%rr) .ne. 2) print*,"121"
if(sizeof(obj%rr) .ne. 8) print*,"122"
if(any(obj%rr .ne. [2,4])) print*,"123"
print*,"Pass"
end
