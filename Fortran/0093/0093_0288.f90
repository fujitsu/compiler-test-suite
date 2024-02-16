program pro
complex ::c
type ty
complex, allocatable ::cmp
end type ty
type(ty), allocatable :: obj
real :: x1
real :: sfun1
sfun1(c) = c%im
allocate(obj)
allocate(obj%cmp)
obj%cmp=(3.0,5.0)
x1=sfun1(obj%cmp)
if(x1.ne.5.0) print*,101,x1
print*,"pass"
end
