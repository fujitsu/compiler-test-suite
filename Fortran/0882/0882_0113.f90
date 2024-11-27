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
   class(x1),pointer::cy1(:,:)
 contains
  subroutine chk(d1, d2, d3, d4)
  type(x1):: d1(2,3)
  type(x2)::  d2(2,*)
  type(x1),allocatable ::  d3(:,:)
  type(x2), pointer::  d4(:,:,:)

  print *, "sub chk d1(1,1)%ix1     =", d1(1,1)%ix1
  print *, "sub chk d2(2,1)%ix0     =", d2(2,1)%ix0
  print *, "sub chk d3(2,2)%ix0     =", d3(2,2)%ix0
  print *, "sub chk d4(1,1,1)%ix1   =", d4(1,1,1)%ix1

  end subroutine
end

subroutine s1
use m3

class(x2),  allocatable ::     ptr1(:,:)
class(x1),  pointer     ::     ptr2(:,:)
type(x1) ,  allocatable ::     t1(:,:)
type(x2) ,  pointer     ::     t2(:,:,:)
type(x2) ,   target::ty2(3,2)
type(x2) ,   target::ty3(3,2,2)

ty2%ix1=reshape([1,2,3,4,5,6],[3,2])
ty3%ix1=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,2,2])

ptr2=>ty2
t2=>ty3

allocate(ptr1(2, 2))
if(ALLOCATED(ptr1)) then
ptr1%ix0=reshape([4,5,6,7],[2,2])
else
print *, "ALLOCATE FAIL - ptr1"
endif

allocate(t1(2,3))
if(ALLOCATED(t1)) then
t1%ix0=reshape([7,8,9,10,11,12],[2,3])
else
print *, "ALLOCATE FAIL - t1"
endif

print *, "sub s1 ptr2(1,1)%ix1   =", ptr2(1,1)%ix1
print *, "sub s1 ptr1(2,1)%ix0   =", ptr1(2,1)%ix0
print *, "sub s1 t1(2,2)%ix0     =", t1(2,2)%ix0
print *, "sub s1 t2(1,1,1)%ix1   =", t2(1,1,1)%ix1
call chk(ptr2, ptr1, t1, t2)
end

call s1
end
