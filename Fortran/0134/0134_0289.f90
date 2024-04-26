module mod
type :: t
      integer :: i
      procedure(f1),pointer,nopass  :: g1
      procedure(f2),pointer,nopass  :: g2
end type t
  contains
   integer(kind=8) function f1(c)
      type(t):: c
      f1= c%i
   end function f1
   integer(kind=8) function f2(k,c)
      type(t):: c
      f2= k+c%i
   end function f2
end 

use mod
type(t) :: c,x
c%i=1
x%i=1
c%g1=>f1
c%g2=>f2
if (c%g1(c)/=1)print *,'error-1'
if (c%g1(x)/=1)print *,'error-2'
if (c%g2(0,c)/=1)print *,'error-3'
print *,'pass'
end
