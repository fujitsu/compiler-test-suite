module m1
type aa
  integer a1
  integer a2(2)
end type
contains
function ss1()
type(aa),allocatable::ss1(:,:)
allocate (ss1(2,3))
ss1%a1=1
do j1=1,2
ss1%a2(j1)=2
end do
end function
end
subroutine s1
use m1,ax=>aa
type(ax)::aa(2,3)
type(ax),allocatable::a(:,:)
aa=ss1()
if (any(aa%a1/=1))write(6,*) "NG"
do k=1,2
if (any(aa%a2(k)/=2))write(6,*) "NG"
end do
allocate (a(2,3))
a=ss1()
if (any(a%a1/=1))write(6,*) "NG"
do k=1,2
if (any(a%a2(k)/=2))write(6,*) "NG"
end do
end
module m2
type aa
  integer,pointer:: a1
  integer,pointer:: a2(:)
end type
contains
function ss2()
type(aa),allocatable::ss2(:,:)
allocate (ss2(2,3))
i=2
do j2=1,3
do j1=1,2
 allocate(ss2(j1,j2)%a1,ss2(j1,j2)%a2(2))
end do
end do
do j2=1,3
do j1=1,2
ss2(j1,j2)%a1=1
ss2(j1,j2)%a2(1:i)=2
end do
end do
end function
end
subroutine s2
use m2
type(aa)::a1(2,3)
type(aa),allocatable::a2(:,:)
a1=ss2()
do j2=1,3
do j1=1,2
if ((a1(j1,j2)%a1/=1))write(6,*) "NG"
do k=1,2
if ((a1(j1,j2)%a2(k)/=2))write(6,*) "NG"
end do
end do
end do
allocate (a2(2,3))
a2=ss2()
do j2=1,3
do j1=1,2
if ((a2(j1,j2)%a1/=1))write(6,*) "NG"
do k=1,2
if ((a2(j1,j2)%a2(k)/=2))write(6,*) "NG"
end do
end do
end do
end
call s1
call s2
print *,'pass'
end
