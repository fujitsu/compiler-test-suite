module m1
 type x1
   integer::ix0
   integer::ix1
 end type
 type,extends(x1)::x2
   integer::ix2
 end type
type(x1),allocatable::t1
type(x2),allocatable::t2
class(x1),allocatable::p1
class(x2),allocatable::p2
contains
subroutine sub1(c1)
class(x1)::c1
if (c1%ix1/=1)print *,101
end subroutine
subroutine sub2(c2)
class(x2)::c2
if (c2%ix1/=1)print *,201
end subroutine
subroutine tub1(d1)
type(x1)::d1
if (d1%ix1/=1)print *,301
end subroutine
subroutine tub2(d2)
type(x2)::d2
if (d2%ix1/=1)print *,401
end subroutine
end
subroutine s1
use m1
allocate(t1)
t1%ix1=1
allocate(t2)
t2%ix1=1
allocate(p1)
p1%ix1=1
allocate(p2)
p2%ix1=1
call sub1(t1)
call sub1(t2) 
call sub2(t2)
call tub1(p1)
call tub1(p2%x1)
call tub2(p2)
call sub1(p1)
call sub1(p2) 
call sub2(p2) 
end
call s1
print *,'pass'
end

