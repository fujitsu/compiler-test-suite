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
 type w1
   integer d1
   class(x1),allocatable,dimension(:)::cy1,cy2,cy3
 end type
 contains
  subroutine chk(c1,c2,c3)
   class(x1),dimension(3)::c1,c2,c3
    if (c1(1)%ix1/=1)print *,201
    if (c1(2)%ix1/=2)print *,202
    if (c1(3)%ix1/=3)print *,203
   if (any(c1%ix1/=[1,2,3]))print *,207
    if (c2(1)%ix1/=1)print *,301
    if (c2(2)%ix1/=2)print *,302
    if (c2(3)%ix1/=3)print *,303
   if (any(c2%ix1/=[1,2,3]))print *,307
    if (c3(1)%ix1/=1)print *,401
    if (c3(2)%ix1/=2)print *,402
    if (c3(3)%ix1/=3)print *,403
   if (any(c3%ix1/=[1,2,3]))print *,407
  end subroutine
end
subroutine s1(n3)
use m3
 type(w1)::v1(n3),v2(n3)
   type(x1)::ty1(n3)
   type(x2)::ty2(n3)
   type(x3)::ty3(n3)
ty1%ix1=[1,2,3]
ty1%ix0=0

ty2%ix1=[1,2,3]
ty2%ix2=0
ty2%ix0=0

ty3%ix1=[1,2,3]
ty3%ix2=0
ty3%ix0=0
ty3%ix3=0

allocate(v1(2)%cy1,source=ty3)
allocate(v1(2)%cy2,source=ty3)
allocate(v1(2)%cy3,source=ty3)
!
if (v1(2)%cy1(1)%ix1/=1)print *,1211
if (v1(2)%cy1(2)%ix1/=2)print *,1212
if (v1(2)%cy1(3)%ix1/=3)print *,1213
if (v1(2)%cy2(1)%ix1/=1)print *,1221
if (v1(2)%cy2(2)%ix1/=2)print *,1222
if (v1(2)%cy2(3)%ix1/=3)print *,1223
if (v1(2)%cy3(1)%ix1/=1)print *,1231
if (v1(2)%cy3(2)%ix1/=2)print *,1232
if (v1(2)%cy3(3)%ix1/=3)print *,1233
call chk(v1(2)%cy1,v1(2)%cy2,v1(2)%cy3)

allocate(v1(1)%cy1,source=ty2)
allocate(v1(1)%cy2,source=ty3)
allocate(v1(1)%cy3,source=ty3)
!
if (v1(1)%cy1(1)%ix1/=1)print *,4211
if (v1(1)%cy1(2)%ix1/=2)print *,4212
if (v1(1)%cy1(3)%ix1/=3)print *,4213
if (v1(1)%cy2(1)%ix1/=1)print *,4221
if (v1(1)%cy2(2)%ix1/=2)print *,4222
if (v1(1)%cy2(3)%ix1/=3)print *,4223
if (v1(1)%cy3(1)%ix1/=1)print *,4231
if (v1(1)%cy3(2)%ix1/=2)print *,4232
if (v1(1)%cy3(3)%ix1/=3)print *,4233
call chk(v1(1)%cy1,v1(2)%cy2,v1(2)%cy3)

allocate(v1(3)%cy1,source=ty2)
allocate(v1(3)%cy2,source=ty3)
allocate(v1(3)%cy3,source=ty3)
!
if (v1(3)%cy1(1)%ix1/=1)print *,3211
if (v1(3)%cy1(2)%ix1/=2)print *,3212
if (v1(3)%cy1(3)%ix1/=3)print *,3213
if (v1(3)%cy2(1)%ix1/=1)print *,3221
if (v1(3)%cy2(2)%ix1/=2)print *,3222
if (v1(3)%cy2(3)%ix1/=3)print *,3223
if (v1(3)%cy3(1)%ix1/=1)print *,3231
if (v1(3)%cy3(2)%ix1/=2)print *,3232
if (v1(3)%cy3(3)%ix1/=3)print *,3233
call chk(v1(3)%cy1,v1(2)%cy2,v1(2)%cy3)

v2=v1

!
if (v2(2)%cy1(1)%ix1/=1)print *,11211
if (v2(2)%cy1(2)%ix1/=2)print *,11212
if (v2(2)%cy1(3)%ix1/=3)print *,11213
if (v2(2)%cy2(1)%ix1/=1)print *,11221
if (v2(2)%cy2(2)%ix1/=2)print *,11222
if (v2(2)%cy2(3)%ix1/=3)print *,11223
if (v2(2)%cy3(1)%ix1/=1)print *,11231
if (v2(2)%cy3(2)%ix1/=2)print *,11232
if (v2(2)%cy3(3)%ix1/=3)print *,11233
call chk(v2(2)%cy1,v1(2)%cy2,v1(2)%cy3)

if (v2(1)%cy1(1)%ix1/=1)print *,14211
if (v2(1)%cy1(2)%ix1/=2)print *,14212
if (v2(1)%cy1(3)%ix1/=3)print *,14213
if (v2(1)%cy2(1)%ix1/=1)print *,14221
if (v2(1)%cy2(2)%ix1/=2)print *,14222
if (v2(1)%cy2(3)%ix1/=3)print *,14223
if (v2(1)%cy3(1)%ix1/=1)print *,14231
if (v2(1)%cy3(2)%ix1/=2)print *,14232
if (v2(1)%cy3(3)%ix1/=3)print *,14233
call chk(v2(1)%cy1,v1(2)%cy2,v1(2)%cy3)

!
if (v2(3)%cy1(1)%ix1/=1)print *,13211
if (v2(3)%cy1(2)%ix1/=2)print *,13212
if (v2(3)%cy1(3)%ix1/=3)print *,13213
if (v2(3)%cy2(1)%ix1/=1)print *,13221
if (v2(3)%cy2(2)%ix1/=2)print *,13222
if (v2(3)%cy2(3)%ix1/=3)print *,13223
if (v2(3)%cy3(1)%ix1/=1)print *,13231
if (v2(3)%cy3(2)%ix1/=2)print *,13232
if (v2(3)%cy3(3)%ix1/=3)print *,13233
call chk(v2(3)%cy1,v1(2)%cy2,v1(2)%cy3)
end
call s1(3)
print *,'pass'
end

