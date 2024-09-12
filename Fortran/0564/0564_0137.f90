function fun ()
type ty
integer,allocatable :: alc
end type

type(ty),pointer:: obj2(:)

type(ty),allocatable:: obj1(:)

allocate(obj1(4))
allocate(obj2(3))

allocate(obj2(1)%alc)
allocate(obj2(2)%alc)
allocate(obj2(3)%alc)

allocate(obj1(1)%alc)
allocate(obj1(2)%alc)
allocate(obj1(3)%alc)

obj1(1)%alc = 1
obj1(2)%alc = 2
obj1(3)%alc = 3

obj2(1)%alc = 6
obj2(2)%alc = 7
obj2(3)%alc = 8


obj1 = obj2
if(size(obj1) .ne. 3) print*,"121",size(obj1)
!if(sizeof(obj1) .ne. 48) print*,"122",sizeof(obj1)
fun  = 5
end function

integer::ii
ii = fun()
if (ii /= 5) print*, 911
print*, "PASS"
end
