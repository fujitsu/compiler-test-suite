module m1

  type t
    real y
    integer z
  contains
    procedure ::  prc1 =>p1
    procedure, pass(a) :: prc2 => p2
    procedure ,NOPASS  :: p6
    generic  :: operator(+) => prc1
    generic :: operator(.MULTIPLY.) => prc2
    generic :: gnr => p6, prc1 , prc2  
  end type

  type ,extends(t) :: t2
    real x
  contains
    procedure ::  prc1 =>p4
    procedure ,NOPASS  :: p6
    procedure,pass(a) :: prc2 => p3
    generic :: operator(+) => prc1
    generic :: operator(.MULTIPLY.) => prc2
    generic  :: gnr =>p6,  prc1 , prc2
  end type

contains

  integer function p6()
    p6 = 10
  end function

  real function p1(a,b)
    class(t),intent(in) :: a
    real,intent(in)  :: b
    p1 = a%y + b
    print*, 'Base Version p1 OPERATOR(+)  call'
  end function

  real function p4(a,b)
    class(t2),intent(in) :: a
    real,intent(in)  :: b
    p4 = a%y + b
  end function

  real function p2(a, b)
    class(t),intent(in) :: a
    class(t2),intent(in) :: b
    p2 = a%y * b%x
    print*, 'Base version p2 OPERATOR(*)  call'
  end function

  real function p3(a, b)
    class(t2),intent(in) :: a
    class(t2),intent(in) :: b
    p3 = a%x * b%x
  end function

end

module m2
use m1
interface OPERATOR (+)
integer function f1(a, b)
import t
class(t),intent(in)  :: a
integer, intent(in)  :: b
end function 
end interface 

interface OPERATOR (.MULTIPLY.)
integer function f2(a, b)
import t
class(t),intent(in)  :: a
integer, intent(in)  :: b
end function 
end interface

end module

integer function f1(a, b)
use m1
class(t),intent(in)  :: a
integer, intent(in)  :: b
f1 = b + a%z
end function

integer function f2(a, b)
use m1
class(t),intent(in)  :: a
integer, intent(in)  :: b
f2 = b * a%z
end function

use m2

type(t2)    :: objt2;
type(t2)    :: objt3;
real        :: a(2)
real        :: res1, res2
real :: val = 20.50
integer :: r1, r2 , r3
objt2%x=12.50
objt2%y=12.50
objt3%x=10.00
r3=10
objt2%z=50

a=(/objt2+val, objt2 .MULTIPLY. objt3 /)
if(a(1) .NE. 33.000000)   print*, 'Error -1'
res1 = objt2%gnr(objt3)
if(res1 .NE. 125.000000)  print*, 'Error -2'
res2 = objt2%gnr(10.50)
if(res2 .NE. 23.0000)     print*, 'Error -3'
if(objt2%gnr()  .NE. 10)  print*, 'Error -4'

r1 = objt2 + r3
r2 = objt2 .MULTIPLY. r3
if(r1  .NE. 60)  print*,  'Error -5'
if(r2  .NE. 500) print*,  'Error -6'

print*,'pass'
end
