module m1
 type z
   integer::z1
 end type
 type x
   integer :: d
   integer,pointer::p1(:,:,:)
   complex,pointer::p2(:,:,:)
   character(:),pointer::p3(:,:,:)
   type(z),pointer::p4(:,:,:)
 end type
character(:),pointer::p3(:)
character(1),pointer::p4(:)
 contains
subroutine s1(w8)
type (x),pointer:: w8(:)
allocate(w8(2:3))
n=2
w8(n+1)%p3(n:3,n:5,n:4)=>p3
if (any(lbound(w8(n+1)%p3)/=n))print *,008301
if (any(w8(n+1)%p3/='x'))print *,008302
if (len(w8(n+1)%p3)/=1)print *,008303
w8(n+1)%p3(n:3,n:5,n:4)=>p4
if (any(lbound(w8(n+1)%p3)/=n))print *,018301
if (any(w8(n+1)%p3/='x'))print *,018302
if (len(w8(n+1)%p3)/=1)print *,018303
end subroutine
subroutine set
allocate(character(1)::p3(24));p3='x'
allocate(              p4(24));p4='x'
end subroutine
end

use m1
type (x),pointer:: w8(:)
call set
call       s1(w8)
print *,'pass'
end
