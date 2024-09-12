module mod1
type,private:: ty
  integer :: ii=10
  contains
    procedure,PRIVATE :: eprc
  generic,PRIVATE :: operator(.plus.) => eprc
end type

type,private,extends(ty) :: ty2
 integer :: jj=20
 contains
  procedure,PRIVATE :: eprc => eprc_ty2
end type

type,private,extends(ty2) :: tty3
 integer :: kk=30
 contains
  procedure,PRIVATE :: eprc => eprc_tty3
end type


contains
function eprc(a,b)
 integer,intent(in) :: b
 class(ty),INTENT(IN) :: a
 integer :: eprc
 eprc = a%ii + b
END function
 
 
function eprc_ty2(a,b)
 class(ty2),INTENT(IN) :: a
 integer,intent(in) :: b
 integer :: eprc_ty2
 eprc_ty2 = a%jj + b
END function
 
 
function eprc_tty3(a,b)
 class(tty3),INTENT(IN) :: a
 integer,intent(in) :: b
 integer :: eprc_tty3
 eprc_tty3 = a%kk + b
END function

subroutine sub
integer::xx=0
type(ty),target :: obj
type(ty2),target :: obj2
type(tty3),target :: obj3
 
xx =  obj .plus. 10
if(xx .ne. 20) print*,'101'
 
xx =  obj2 .plus. 10
if(xx .ne. 30) print*,'102'
 
xx =  obj3 .plus. 10
if(xx .ne. 40) print*,'103'
 
print*,'pass'
end subroutine
end module


PROGRAM MAIN
use mod1
call sub
END
