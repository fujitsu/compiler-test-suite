module m1
type t1
integer :: ii
end type

type,extends(t1) :: t2
integer :: jj
end type

type,extends(t2) :: t3
integer :: zz
end type
end module 

program main

use m1
implicit none 
integer :: arr(3)
integer :: err
interface
subroutine ext_sub(ext_dmy)
use m1
class(t1):: ext_dmy
end subroutine
end interface

CLASS(t1),pointer :: ptr1_t2(:)
CLASS(t2),allocatable :: ptr2_t2(:)
TYPE(t1) ,pointer :: ptr_t1(:)
TYPE(t3) ,target:: obj(5)

obj(1)%ii = 6
obj(2)%ii = 8 
obj(3)%ii = 10
obj(4)%ii = 12
obj(5)%ii = 14
ptr1_t2 => obj

arr(1)=1
arr(2)=2
arr(3)=3

allocate(ptr_t1(2), STAT=err)
if(err == 0) then
ptr_t1(1)%ii = 10
ptr_t1(2)%ii = 20
print*, 'ALLOCATE OK    -1'
else
print*, 'ALLOCATE ERROR -1'
end if

allocate(ptr2_t2(2), STAT=err)
if(err == 0) then
ptr2_t2(1)%ii = 6
ptr2_t2(2)%ii = 8
print*, 'ALLOCATE OK    -2'
else 
print*, 'ALLOCATE ERROR -2'
end if 

print*,obj(3)%ii
print*,arr(3)

call sub(ptr1_t2, arr, ptr2_t2, ptr_t1)
contains
subroutine sub(dmy_ptr, d2, d3, d4) 
class(t1),pointer :: dmy_ptr(:)
type(t1) ,pointer :: d4(:)
integer :: jj
integer :: d2(:)
class(t2), allocatable :: d3(:)
jj = dmy_ptr(2)%ii
print *, jj
print *, d2(3)
print *, d3(1)%ii
print *, d4%ii
call ext_sub(dmy_ptr(2))
end subroutine
end

subroutine ext_sub(ext_dmy)
use m1
class(t1) :: ext_dmy
print*,ext_dmy%ii
end subroutine
