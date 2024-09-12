module mod1
type ty

integer,allocatable :: alc(:)
character(len=6),allocatable::msg(:,:)
integer,allocatable :: alc2
end type

type(ty), allocatable :: obj1(:)
type(ty), pointer :: obj2(:)

contains
subroutine sub (ii)
integer::ii(:)
allocate(ty::obj1(2))
allocate(ty::obj2(3))

allocate(obj2(1)%alc(2))
allocate(obj2(2)%alc(2))
allocate(obj2(3)%alc(2))
allocate(obj2(1)%alc2)
allocate(obj2(2)%alc2)
allocate(obj2(3)%alc2)
allocate(obj2(1)%msg(2,3))
allocate(obj2(2)%msg(2,2))
allocate(obj2(3)%msg(4,2))

allocate(obj1(1)%alc(2))
allocate(obj1(2)%alc(3))
allocate(obj1(1)%alc2)
allocate(obj1(2)%alc2)
allocate(obj1(1)%msg(2,3))
allocate(obj1(2)%msg(2,3))

obj1(1)%alc = 7
obj1(2)%alc = 8
obj1(1)%alc2 = 9
obj1(2)%alc2 = 10
obj1(1)%msg = "DREAM"
obj1(2)%msg = "NIGHT"

obj2(1)%alc = 4
obj2(2)%alc = 5
obj2(3)%alc = 8
obj2(1)%alc2 = 6
obj2(2)%alc2 = 7
obj2(3)%alc2 = 9
obj2(1)%msg = "HELLO1"
obj2(2)%msg = "WORLD1"
obj2(3)%msg = "TESTS1"

if(ii(1) /= 1) print*, 121
if(ii(2) /= 2) print*, 122

obj1 = obj2(ii)

if(size(obj1) /= 3) print*, 101, size(obj1)

if(obj1(1)%alc(1) /= 4) print*,103
if(obj1(2)%alc(2) /= 5) print*,104
if(obj1(3)%alc(2) /= 8) print*,105
if(obj1(1)%alc2 /= 6) print*,106
if(obj1(2)%alc2 /= 7) print*,107
if(obj1(3)%alc2 /= 9) print*,108
if(obj1(1)%msg(2,3) /= "HELLO1") print*,110
if(obj1(2)%msg(2,2) /= "WORLD1") print*,111
if(obj1(3)%msg(4,2) /= "TESTS1") print*,112
print*, "PASS"
end subroutine
end module

program main
USE mod1
integer::nn(3)

nn(1) = 1
nn(2) = 2
nn(3) = 3

call sub(nn)
end
