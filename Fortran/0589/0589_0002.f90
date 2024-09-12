module m1
implicit none
type ty
integer,allocatable :: jj(:)
end type

type ty1
integer,allocatable :: ii(:)
type(ty)::objTY
end type

type ty2
character(len=:),allocatable :: ch(:)
type(ty)::objTY
end type

type(ty1), allocatable :: obj1
type(ty2), allocatable :: obj2
class(*), allocatable, target :: trg

interface func
module procedure func1
module procedure func2
end interface

contains
subroutine func1(arg)
type(ty1), intent(inout) :: arg
arg = obj1
end subroutine
        
subroutine func2(arg)
type(ty2), intent(inout) :: arg
arg = obj2
end subroutine
end module

use m1
allocate(ty1::trg)
allocate(ty1::obj1)
allocate(ty2::obj2)

allocate(obj1%ii(3))
allocate(obj1%objTY%jj(2))
allocate(obj2%objTY%jj(4))
allocate(character(len=5)::obj2%ch(3))

obj1%ii = 21
obj1%objTY%jj = 22

obj2%ch = "XXXXX"
obj2%objTY%jj = 23

select type(trg)
 type is (ty1)
  allocate(trg%ii(3))
  allocate(trg%objTY%jj(3))
  trg%ii = 11
  trg%objTY%jj = 12

 class default
end select

call func(fx1())

select type(trg)
 type is (ty1)
  if(all(trg%ii /= 21)) print*, 101
  if(all(trg%objTY%jj /= 22)) print*, 102
  if(size(trg%objTY%jj) /= 2) print*, 103

 class default
  print*, 913
end select

deallocate(trg)

allocate(ty2::trg)
select type(trg)
 type is (ty2)
  allocate(character(len=5)::trg%ch(3))
  allocate(trg%objTY%jj(3))
  trg%ch =  "AAAAA"
  trg%objTY%jj = 13

 class default
end select

call func(fx2())
select type(trg)
 type is (ty2)
  if(all(trg%ch /= "XXXXX")) print*, 104
  if(all(trg%objTY%jj /= 23)) print*, 105
  if(size(trg%objTY%jj) /= 4) print*, 106

 class default
  print*, 914
end select
print *,"PASS"

contains
function fx1()
use m1
type(ty1),pointer::fx1

select type(trg)
 type is(ty1)
  fx1 => trg

 class default
  print*, "915"
end select
end function

function fx2()
use m1
type(ty2),pointer::fx2

select type(trg)
 type is(ty2)
  fx2 => trg

 class default
  print*, "916"
end select
end function
end program
