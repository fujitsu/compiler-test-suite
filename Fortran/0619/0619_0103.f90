module m1
 type x
   character(1),pointer::p3(:)
   character(1)::xx
 end type
 type y3
  character(:),pointer::p3(:)
 end type
 type(y3)::v3
 type y4
  character(1),pointer::p4(:)
 end type
 type(y4)::v4
type (x),pointer:: w8(:)
 contains
subroutine s1()
!
allocate(w8(2:3))
w8(3)%xx='z'
!
w8(3)%p3(2:25)=>v3%p3
if (    w8(3)%xx/='z')print *,008304
if (any(lbound(w8(3)%p3)/=2))print *,008301
if (any(w8(3)%p3/='x'))print *,008302
if (len(w8(3)%p3)/=1)print *,008303
w8(3)%p3(2:25)=>v4%p4
if (    w8(3)%xx/='z')print *,108304
if (any(lbound(w8(3)%p3)/=2))print *,018301
if (any(w8(3)%p3/='x'))print *,018302
if (len(w8(3)%p3)/=1)print *,018303
end subroutine
subroutine set
allocate(character(1)::v3%p3(24));v3%p3='x'
allocate(              v4%p4(24));v4%p4='x'
end subroutine
end

use m1
call set
call       s1()
print *,'pass'
end
