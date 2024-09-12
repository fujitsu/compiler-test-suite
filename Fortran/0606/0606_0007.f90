module m1
  type t
    real y
  contains
    procedure ::  prc1 =>p1
    procedure, pass(a) :: prc2 => p2
    procedure ,NOPASS  :: p6
    generic  :: operator(+) => prc1
    generic :: operator(*) => prc2
    generic :: gnr => p6, prc1 , prc2  
  end type

  type ,extends(t) :: t2
    real x
  end type

contains

  integer function p6()
    p6 = 10
  end function

  real function p1(a,b)
    class(t),intent(in) :: a
    real,intent(in)  :: b
    p1 = a%y + b
  end function

  real function p4(a,b)
    class(t2),intent(in) :: a
    real,intent(in)  :: b
    p4 = a%y + b
    print*, 'Derived version p4 OPERATOR(+)  call'
  end function

  real function p2(a, b)
    class(t),intent(in) :: a
    class(t2),intent(in) :: b
    p2 = a%y * b%x
  end function

  real function p3(a, b)
    class(t2),intent(in) :: a
    class(t2),intent(in) :: b
    p3 = a%x * b%x
    print*, 'Derived version p3 OPERATOR(*)  call'
  end function
end

integer function af (a, b)
integer  :: a, b
af =a+b
end function

integer function cf (a, b, c)
integer  :: a, b, c
cf =a+b+c
end function

use m1

interface gnr

integer function af (a, b)
integer a, b
end function

integer function cf (a, b, c)
integer a, b,c
end function
end interface

type(t2)    :: objt2;
type(t2)    :: objt3;
real        :: a(2)
real        :: res1, res2
real :: val = 20.50
objt2%x=12.50
objt2%y=12.50
objt3%x=10.00
a=(/objt2+val, objt2*objt3 /)
if(a(1) .NE. 33.000000) print*, 'Error -1'
res1 = objt2%gnr(objt3)
if(res1 .NE. 125.000000) print*, 'Error -2'
res2 = objt2%gnr(10.50)
if(res2 .NE. 23.0000) print*, 'Error -3'
if(objt2%gnr()  .NE. 10) print*, 'Error -4'
if(gnr(2+3, 5)  .NE. 5*2) print*, 'Error -5'
if(gnr(2, 3, 5) .NE. 10) print*, 'Error -6'
print*,'pass'
end
