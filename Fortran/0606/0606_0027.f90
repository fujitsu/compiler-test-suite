module mod1
type ty
 integer :: ii=8
 contains
  procedure :: eprc
   generic :: operator(-) => eprc
end type

type,extends(ty) :: ty2
 integer :: jj=20
end type

type,extends(ty2) :: tty3
 integer :: kk=30
 contains
  procedure :: eprc => eprc_tty3
end type

contains
integer function fun1()
 type(ty) :: obj
 type(ty),target :: obj_1
 type(ty2),target :: obj_2
 type(tty3),target :: obj_3
 obj_1%ii = 10

 obj =  - obj_1
 if(obj%ii .NE. -10) then
   print*,"101"
   fun1 = 0
 else
   print*,'pass1'
 endif

 obj =  - obj_2
 if(obj%ii .ne. -8) then
print*,"102"
   fun1 = 0
 else
   print*,'pass2'
 endif
 
 obj =  - obj_3
 if(obj%ii .ne. -30) then
   print*,"103"
   fun1 = 0
 else
   print*,'pass3'
 endif

fun1=100
end function

function eprc(a)
 class(ty),INTENT(IN) :: a
 type(ty) :: eprc
 eprc%ii = - a%ii 
END function

function eprc_tty3(a)
 class(tty3),INTENT(IN) :: a
 type(ty) :: eprc_tty3
 eprc_tty3%ii = - a%kk
END function
end module


PROGRAM MAIN
use mod1
integer::xx
xx = fun1()
if(xx == 0) print*,xx
end
