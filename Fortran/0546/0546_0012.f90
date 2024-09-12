subroutine s1
integer(8),pointer::p1
integer(8),pointer::p2(:,:)
type x
  integer(8),pointer::p(:,:)
end type
type(x),pointer::p3,p4(:,:)
class(*),pointer::p5,p6(:,:)
type y
  class(*),pointer::p(:,:)
end type
type z
  character(:),pointer::p(:,:)
end type
type (z),pointer::p7,p8(:,:)

if (storage_size(p1)/=n(8))print *,101,storage_size(p1)
if (storage_size(p2)/=n(8))print *,102
if (storage_size(p3)/=n((3+(4*2))*8))print *,103
if (storage_size(p4)/=n((3+(4*2))*8))print *,104

allocate(p3)
if (storage_size(p3%p)/=n(8))print *,105
allocate(p4(2,3))
if (storage_size(p4(2,3)%p)/=n(8))print *,106

allocate(x::p5)
if (storage_size(p5)/=n((3+(4*2))*8))print *,107

allocate(x::p6(2,3))
if (storage_size(p6)/=n((3+(4*2))*8))print *,108
  
allocate(y::p5)
if (storage_size(p5)/=n((3+2+(4*2))*8))print *,109,storage_size(p5)
  
allocate(y::p6(3,2))
if (storage_size(p6)/=n((3+2+(4*2))*8))print *,110,storage_size(p6)

allocate(p7)
allocate(character(2)::p7%p(2,3))
if (storage_size(p7%p)/=n(2))print *,111,storage_size(p7%p)

allocate(p8(2,3))
allocate(character(2)::p8(2,3)%p(2,3))
if (storage_size(p8(2,3)%p)/=n(2))print *,112,storage_size(p8(2,3)%p)
end
call s1
print *,'pass'
end
function n(nn)
n=nn*8
end
