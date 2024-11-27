program test

type ty1
   integer::ix0
   integer::ix1
 end type

type,extends(ty1):: ty2
   integer::ix2
 end type

integer :: ii
class (ty1), ALLOCATABLE   :: ptr1(:,:,:,:,:,:)
type  (ty1), ALLOCATABLE   :: t1(:,:,:)
class (ty2), POINTER       :: ptr2(:,:)
type  (ty2), TARGET        :: t2(3,2)

t2%ix1=reshape([1,2,3,4,5,6],[3,2])

ptr2=>t2
ii=10
allocate(ptr1(4,5,6,4,3,4))

if(ALLOCATED(ptr1)) then
ptr1(2,3,2,3,2,3)%ix0=50
else
print *, "ALLOCATE FAIL - ptr1"
endif

allocate(t1(3,3,3))
if(ALLOCATED(t1)) then
t1(2,2,2)%ix0 = 100
else
print *, "ALLOCATE FAIL - t1"
endif

print *, " main -> ptr1(2,3,2,3,2,3)%ix0=", ptr1(2,3,2,3,2,3)%ix0
print *, " main -> ii=", ii
print *, " main -> ptr2(2,2)%ix1=", ptr2(2,2)%ix1
print *, " main -> t1(2,2,2)%ix0=", t1(2,2,2)%ix0

call sub(ptr1, ii, ptr2, t1)

contains
subroutine sub(d1, d2, d3, d4)
integer :: d2
class (ty1), ALLOCATABLE   :: d1(:,:,:,:,:,:)
type  (ty1), ALLOCATABLE   :: d4(:,:,:)
class (ty2), POINTER       :: d3(:,:)

print *, " sub -> d1(2,3,2,3,2,3)%ix0=", d1(2,3,2,3,2,3)%ix0
print *, " sub -> d2=", d2
print *, " sub -> d3(2,2)%ix1=", d3(2,2)%ix1
print *, " sub -> d4(2,2,2)%ix0=", d4(2,2,2)%ix0

end subroutine
end program

