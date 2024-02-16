program pro
complex ::c
type ty
complex, allocatable ::cmp(:)
end type ty
type(ty), allocatable :: obj
real :: x1
real :: sfun1
sfun1(c) = c%im
allocate(obj)
allocate(obj%cmp(2))
obj%cmp(1)=(1.0,3.0)
obj%cmp(2)=(3.0,5.0)
x1=sfun1(obj%cmp(2)+(2,1))
if(x1.ne.6.0) print*,101,x1
print*,"pass"
end
