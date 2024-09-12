module m1
 type x1
   integer::ix0
   integer::ix1
 end type
end
module m2
use m1
 type,extends(x1)::x2
   integer::ix2
 end type
end
module m3
 use m2
 type,extends(x2)::x3
   integer::ix3
 end type

 contains
  subroutine chk1(c1)
   class(x1),pointer,dimension(:)::c1
    if (c1(1)%ix1/=1)print *,5201
    if (c1(2)%ix1/=2)print *,5202
    if (c1(3)%ix1/=3)print *,5203
   if (any(c1%ix1/=[1,2,3]))print *,2207
   k=0
   call chk3(c1,k)
   k=0
   call chk4(c1,k)
  end subroutine
  subroutine chk2(c1)
   class(x1),allocatable,dimension(:)::c1
    if (c1(1)%ix1/=1)print *,6201
    if (c1(2)%ix1/=2)print *,6202
    if (c1(3)%ix1/=3)print *,6203
   if (any(c1%ix1/=[1,2,3]))print *,6207
   k=0
   call chk3(c1,k)
   k=0
   call chk4(c1,k)
  end subroutine
  recursive subroutine chk3(c1,k)
   class(x1),dimension(3)::c1
    if (c1(1)%ix1/=1)print *,7201
    if (c1(2)%ix1/=2)print *,7202
    if (c1(3)%ix1/=3)print *,7203
   if (any(c1%ix1/=[1,2,3]))print *,7207
   k=k+1
   if (k<3)call chk3(c1,k)
   if (k<5)call chk4(c1,k)
  end subroutine
  recursive subroutine chk4(c1,k)
   class(x1),dimension(:)::c1
    if (c1(1)%ix1/=1)print *,8201
    if (c1(2)%ix1/=2)print *,8202
    if (c1(3)%ix1/=3)print *,8203
   if (any(c1%ix1/=[1,2,3]))print *,8207
   k=k+1
   if (k<3)call chk4(c1,k)
   if (k<5)call chk3(c1,k)
  end subroutine
end
module m4
use m3
type ,extends(x3)::x4
   integer::c1
   class(x1),allocatable,dimension(:)::cy1
   class(x1),pointer    ,dimension(:)::cz1
end type
type(x4),pointer::v(:)
end
subroutine s1
use m4
type(x2)::ty2(3)
ty2%ix1=[1,2,3]
ty2%ix2=0
ty2%ix0=0

k=0
allocate(v(2))
allocate(v(2)%cy1(3),source=ty2)
    if (v(2)%cy1(1)%ix1/=1)print *,3201
    if (v(2)%cy1(2)%ix1/=2)print *,3202
    if (v(2)%cy1(3)%ix1/=3)print *,3203
    if (size(v(2)%cy1)/= 3)print *,3204
call chk3(v(2)%cy1,k)
k=0
call chk4(v(2)%cy1,k)
k=0
call chk2(v(2)%cy1)
allocate(v(2)%cz1(3),source=ty2)
    if (v(2)%cz1(1)%ix1/=1)print *,3301
    if (v(2)%cz1(2)%ix1/=2)print *,3302
    if (v(2)%cz1(3)%ix1/=3)print *,3303
    if (size(v(2)%cz1)/= 3)print *,3304
call chk3(v(2)%cz1,k)
k=0
call chk4(v(2)%cz1,k)
k=0
call chk1(v(2)%cz1)
end
call s1
print *,'pass'
end

