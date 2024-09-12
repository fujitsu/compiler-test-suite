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
  procedure :: pc
  generic :: operator(-) => pc
end type

contains
function fun1()
 class(ty),pointer :: ptr
 type(ty) :: obj
 type(ty),target :: obj_1
 type(ty2),target :: obj_2
 type(tty3),target :: obj_3
 obj_1%ii = 10

 ptr => obj_1

 obj =  - ptr
 if(obj%ii .NE. -10) then
  print*,"101"
 fun1 = 0
 else
 fun1 = obj%ii

 ptr => obj_2

 obj =  - ptr
 if(obj%ii .ne. -8) print*,102
 ptr => obj_3

 obj =  - ptr
 if(obj%ii .ne. -30) print*,103

 obj =  obj_3 - 2
 if(obj%ii .ne. -28) print*,104
 endif
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

function pc(a,b)
 class(tty3),INTENT(IN) :: a
 integer,intent(in) :: b
 type(ty) :: pc

 pc%ii = - a%kk + b
END function
end module

use mod1
xx = fun1()
if(xx==-10) print*,'pass'
end
