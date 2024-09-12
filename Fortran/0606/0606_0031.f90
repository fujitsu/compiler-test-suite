module mod1
type ty
 integer :: ii=1
 contains
  procedure :: eprc
   generic :: operator(-) => eprc
end type

type,extends(ty) :: ty2
 integer :: jj=2
end type

type,extends(ty2) :: tty3
 integer :: kk=3
 contains
  procedure :: eprc => eprc_tty3
end type

contains
integer function fun1()
 type(ty) :: obj
 type(ty),target :: obj_1(3)
 type(ty2),target :: obj_2(3)
 type(tty3),target :: obj_3(3)

 obj_1(1)%ii = 100
 obj_1(2)%ii = 200
 obj_1(3)%ii = 300
 obj = -obj_1(2)
 if(obj%ii .NE. -200) then
   print*,"101"
   fun1 = 0
 else
   print*,'pass1'
 endif

 obj_2(1)%ii = 400
 obj_2(2)%ii = 500
 obj_2(3)%ii = 600
 obj =  - obj_2(1)
 if(obj%ii .ne. -400) then
   print*,"102"
   fun1 = 0
 else
   print*,'pass2'
 endif
 
 obj_3(1)%kk=700
 obj_3(2)%kk=800
 obj_3(3)%kk=900
 obj = -obj_3(3)
 if(obj%ii .ne. -900) then
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
