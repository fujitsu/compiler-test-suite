subroutine s1
type aa
  integer a1
  integer a2(2)
end type
type(aa),allocatable::a(:,:)
allocate (a(2,3))
a%a1=1
do j1=1,2
a%a2(j1)=2
end do
if (any(a%a1/=1))write(6,*) "NG"
do k=1,2
if (any(a%a2(k)/=2))write(6,*) "NG"
end do
end
subroutine s2
type aa
  integer:: a1
  integer,allocatable:: a2(:)
end type
type(aa),allocatable::a(:,:)
allocate (a(2,3))
i=2
do j2=1,3
do j1=1,2
 allocate(a(j1,j2)%a2(2))
end do
end do
do j2=1,3
do j1=1,2
a(j1,j2)%a1=1
a(j1,j2)%a2(1:i)=2
if ((a(j1,j2)%a1/=1))write(6,*) "NG"
do k=1,2
if ((a(j1,j2)%a2(k)/=2))write(6,*) "NG"
end do
end do
end do
end
call s1
call s2
print *,'pass'
end
