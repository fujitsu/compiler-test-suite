module my
 type y
   integer,allocatable::y1(:)
   integer            ::y2(2)
   integer,pointer    ::y3(:)
 end type
end
module my2
use my,only:ww=>y
end
module m11
use my
use my2
 type x
   type(ww),allocatable::x221(:)
   type(ww)            ::x222(2)
   type(ww),pointer    ::x223(:)
   type(y),allocatable::x11(:)
   type(y)            ::x12(2)
   type(y),pointer    ::x13(:)
   integer,allocatable::x1(:)
   integer            ::x2(2)
   integer,pointer    ::x3(:)
 end type
end
module m111
 use m11,only:z=>x
end
module m1
 use m111
 use m11
 type(x),allocatable:: a1(:)
 type(x)            :: a2(2)
 type(x),pointer    :: a3(:)
 type(z),allocatable:: d1(:)
 type(z)            :: d2(2)
 type(z),pointer    :: d3(:)
contains
subroutine alc
allocate(a1(1))
allocate(a1(1)%x1(2))
allocate(a1(1)%x3(2))
allocate(a1(1)%x11(2))
allocate(a1(1)%x13(2))
allocate(a1(1)%x11(1)%y1(2))
allocate(a1(1)%x11(1)%y3(2))
allocate(a1(1)%x12(1)%y1(2))
allocate(a1(1)%x12(1)%y3(2))
allocate(a1(1)%x13(1)%y1(2))
allocate(a1(1)%x13(1)%y3(2))
allocate(a2(1)%x1(2))
allocate(a2(1)%x3(2))
allocate(a2(1)%x11(2))
allocate(a2(1)%x13(2))
allocate(a2(1)%x11(1)%y1(2))
allocate(a2(1)%x11(1)%y3(2))
allocate(a2(1)%x12(1)%y1(2))
allocate(a2(1)%x12(1)%y3(2))
allocate(a2(1)%x13(1)%y1(2))
allocate(a2(1)%x13(1)%y3(2))
allocate(a3(1))
allocate(a3(1)%x1(2))
allocate(a3(1)%x3(2))
allocate(a3(1)%x11(2))
allocate(a3(1)%x13(2))
allocate(a3(1)%x11(1)%y1(2))
allocate(a3(1)%x11(1)%y3(2))
allocate(a3(1)%x12(1)%y1(2))
allocate(a3(1)%x12(1)%y3(2))
allocate(a3(1)%x13(1)%y1(2))
allocate(a3(1)%x13(1)%y3(2))

allocate(a1(1)%x221(2))
allocate(a1(1)%x223(2))
allocate(a1(1)%x221(1)%y1(2))
allocate(a1(1)%x221(1)%y3(2))
allocate(a1(1)%x222(1)%y1(2))
allocate(a1(1)%x222(1)%y3(2))
allocate(a1(1)%x223(1)%y1(2))
allocate(a1(1)%x223(1)%y3(2))
allocate(a2(1)%x221(2))
allocate(a2(1)%x223(2))
allocate(a2(1)%x221(1)%y1(2))
allocate(a2(1)%x221(1)%y3(2))
allocate(a2(1)%x222(1)%y1(2))
allocate(a2(1)%x222(1)%y3(2))
allocate(a2(1)%x223(1)%y1(2))
allocate(a2(1)%x223(1)%y3(2))
allocate(a3(1)%x221(2))
allocate(a3(1)%x223(2))
allocate(a3(1)%x221(1)%y1(2))
allocate(a3(1)%x221(1)%y3(2))
allocate(a3(1)%x222(1)%y1(2))
allocate(a3(1)%x222(1)%y3(2))
allocate(a3(1)%x223(1)%y1(2))
allocate(a3(1)%x223(1)%y3(2))

allocate(d1(1))
allocate(d1(1)%x1(2))
allocate(d1(1)%x3(2))
allocate(d1(1)%x11(2))
allocate(d1(1)%x13(2))
allocate(d1(1)%x11(1)%y1(2))
allocate(d1(1)%x11(1)%y3(2))
allocate(d1(1)%x12(1)%y1(2))
allocate(d1(1)%x12(1)%y3(2))
allocate(d1(1)%x13(1)%y1(2))
allocate(d1(1)%x13(1)%y3(2))
allocate(d2(1)%x1(2))
allocate(d2(1)%x3(2))
allocate(d2(1)%x11(2))
allocate(d2(1)%x13(2))
allocate(d2(1)%x11(1)%y1(2))
allocate(d2(1)%x11(1)%y3(2))
allocate(d2(1)%x12(1)%y1(2))
allocate(d2(1)%x12(1)%y3(2))
allocate(d2(1)%x13(1)%y1(2))
allocate(d2(1)%x13(1)%y3(2))
allocate(d3(1))
allocate(d3(1)%x1(2))
allocate(d3(1)%x3(2))
allocate(d3(1)%x11(2))
allocate(d3(1)%x13(2))
allocate(d3(1)%x11(1)%y1(2))
allocate(d3(1)%x11(1)%y3(2))
allocate(d3(1)%x12(1)%y1(2))
allocate(d3(1)%x12(1)%y3(2))
allocate(d3(1)%x13(1)%y1(2))
allocate(d3(1)%x13(1)%y3(2))

allocate(d1(1)%x221(2))
allocate(d1(1)%x223(2))
allocate(d1(1)%x221(1)%y1(2))
allocate(d1(1)%x221(1)%y3(2))
allocate(d1(1)%x222(1)%y1(2))
allocate(d1(1)%x222(1)%y3(2))
allocate(d1(1)%x223(1)%y1(2))
allocate(d1(1)%x223(1)%y3(2))
allocate(d2(1)%x221(2))
allocate(d2(1)%x223(2))
allocate(d2(1)%x221(1)%y1(2))
allocate(d2(1)%x221(1)%y3(2))
allocate(d2(1)%x222(1)%y1(2))
allocate(d2(1)%x222(1)%y3(2))
allocate(d2(1)%x223(1)%y1(2))
allocate(d2(1)%x223(1)%y3(2))
allocate(d3(1)%x221(2))
allocate(d3(1)%x223(2))
allocate(d3(1)%x221(1)%y1(2))
allocate(d3(1)%x221(1)%y3(2))
allocate(d3(1)%x222(1)%y1(2))
allocate(d3(1)%x222(1)%y3(2))
allocate(d3(1)%x223(1)%y1(2))
allocate(d3(1)%x223(1)%y3(2))
end subroutine
end
module m2
use m1,only:b1=>a1,b2=>a2,b3=>a3,e1=>d1,e2=>d2,e3=>d3
end
module m3
use m2,only:c1=>b1,c2=>b2,c3=>b3
end
module m4
use m1,only:f1=>d1,f2=>d2,f3=>d3
end
module m5
use m4,only:g1=>f1,g2=>f2,g3=>f3
end
subroutine s1(k1,k2)
use m1
use m2
use m3
use m4
use m5
call alc
do n=k1,k2
g3(1)%x221(1)%y3(1)=50201
f3(1)%x221(1)%y3(1)=e3(1)%x221(1)%y3(1)+1
if (e3(1)%x221(1)%y3(1)/=50202) print *,50211
if (d3(1)%x221(1)%y3(1)/=50202) print *,50212
end do
end
call s1(1,5)
print *,'pass'
end
