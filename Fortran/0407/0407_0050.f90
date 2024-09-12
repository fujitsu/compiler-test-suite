module mmm
integer ii
end
MODULE mod
  INTERFACE
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE

  PROCEDURE(sub), POINTER :: pa
END MODULE

MODULE mod1
 USE mod
  PROCEDURE(sub), POINTER :: pa2
  PROCEDURE(sub),pointer :: pa3=>NULL()
 real a
END MODULE
    SUBROUTINE sub()
use mmm
   ii=1
    END SUBROUTINE

MODULE m1
USE mod1,ONLY: pa
end 
MODULE m2
USE m1
end

use mmm
USE mod1,ONLY: pa2
USE mod1,ONLY: pa3
USE modb,ONLY: t3
USE m1
  INTERFACE
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE
pa=>sub
call pa()
if (ii.ne.1) print *,'err'
print *,'pass' 
END

module modb
use moda
type t3
real :: x, y
contains
procedure, nopass :: fun => cfun
end type t3
contains
function cfun (a, b) result(r)
class (t2), intent (in) :: a
class (t1), intent (in) :: b
real :: r
end function cfun
end

module moda
type t1
real :: x, y
contains
procedure, pass :: fun => afun
end type t1
type, extends(t1) ::t2
real:: z
contains
procedure, pass :: fun => bfun
end type t2
contains
function afun (a, b) result(r)
class (t1), intent (in) :: a, b
real :: r
r = a%x + b%x + a%y + b%y
end function afun
function bfun (a, b) result(r)
class (t2), intent (in) :: a
class (t1), intent (in) :: b
real :: r
end function bfun
end module moda
