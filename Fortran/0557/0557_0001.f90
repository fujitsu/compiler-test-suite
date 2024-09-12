module m1
  type t
    real y
  contains
    procedure ::  prc1 =>p1
    procedure, pass(a) :: prc2 => ff1
    generic :: XLUS => prc1
    generic :: MULT => prc2
  end type

  type ,extends(t) :: t2
    real x
  contains
    procedure ::  prc1 =>dfun1
    procedure,pass(a) :: prc2 => overridff1
  end type

contains

  real function p1(a,b)
    class(t),intent(in) :: a
    real,intent(in)  :: b
    p1 = a%y + b
  end function
  
  real function dfun1(a,b)
    class(t2),intent(in) :: a
    real,intent(in)  :: b
    dfun1 = a%y + b
  end function

  real function ff1(a, b)
    class(t),intent(in) :: a
    integer,intent(in) :: b
    ff1 = a%y * b
  end function

  real function overridff1(a, b)
    class(t2),intent(in) :: a
    integer,intent(in) :: b
    overridff1 = a%y + b
  end function
end

use m1

type(t2)    :: objt2;
type(t)    :: objt;
objt%y = 2.0
objt2%y = 2.0
if(objt%MULT(1) .NE. 2) print*,"121"
if(objt2%MULT(1) .NE. 3) print*,"122"
print*,"pass"
end
