module m1
type ty
integer,allocatable :: m(:)
end type

type(ty) :: obj
integer :: i = 3
contains
subroutine sub
allocate(obj%m(3))

obj%m = 10

a1:associate(a=>(obj%m(1) * obj%m(1)))
 a2: associate(b=>(obj%m(2) * obj%m(2)))
  obj%m = 11
  goto 100
 end associate a2
 print*, "911"
 100 if(all(obj%m /= 11)) print*, 101
 obj%m = 3

 b1: block
  a3: associate(b=>(obj%m(1) * obj%m(2)))
   obj%m = 12
    if (i == 3) exit a1
  end associate a3

  b2: block
   obj%m = 13
   exit b1
  end block b2

  obj%m = 14
 end block b1
 obj%m = 15
end associate a1

if(all(obj%m /= 12)) print*, 102, obj%m
end subroutine
end module

use m1

call sub()
print*,"PASS"
end
