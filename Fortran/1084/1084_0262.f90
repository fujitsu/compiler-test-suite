module m1
TYPE t0
  INTEGER :: x00
end type

TYPE,extends(t0):: t1
  INTEGER :: x11
END TYPE
interface operator (+)
module procedure::concat
end interface

contains
function concat(d1, d2)
class(*), value, intent(in)::d1
class(*), value, intent(in)::d2
class(t1),allocatable::concat
select type(A=>d1)
 type is(t1)
   if(A%x00.ne.10)print*,"111"
  select type(B=>d2)
 type is(t1)
   if(B%x00.ne.20)print*,"131"
   allocate(concat)
   concat%x00 = A%x00 + B%x00
 end select
end select
end function
end module

use m1
class(t0),allocatable:: x11
class(t0),allocatable:: x22
class(t0),allocatable:: x33
allocate(t1::x11)
allocate(t1::x22)
allocate(t1::x33)
x11%x00  =10
x22%x00  =20
  x33 = x11 +  x22
select type(A=>x11)
type is(t1)
  x33 = x11 +  x22
  x33 = A +  x22
  select type(A=>x11)
   type is(t1)
    A%x00 =20
    x22%x00 =10
    x33 =x22 +  A
 end select
 type is(t0)
  print*,"301"
end select

select type(A=>x33)
type is(t1)
if(A%x00.ne.30)print*,"102"
type is(t0)
  print*,"101"
end select
print*,"PASS"
end
