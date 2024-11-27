module m1
   type x0
     integer::b1=31
     integer,allocatable,dimension(:,:)::b2
     integer::b3=33
   end type
   type x1
     integer::a1=21
     integer,allocatable,dimension(:,:)::a2
     type(x0),allocatable,dimension(:,:)::a3
   end type
   parameter (is=2)
end
use m1
do ipo=1,5
call s1(is)
end do
print *,'pass'
end
subroutine s1(ip)
use m1
type(x1)::v1,v2(is),v3(ip),v4(:)
allocatable::v4
if (v1%a1/=21)write(6,*) "NG"
if (allocated(v1%a2))write(6,*) "NG"
if (allocated(v1%a3))write(6,*) "NG"
allocate(v1%a3(2,3))
if (any(v1%a3%b1/=31))write(6,*) "NG"
do kk2=1,3
do kk1=1,2
if (allocated(v1%a3(kk1,kk2)%b2))write(6,*) "NG"
end do
end do
if (any(v1%a3%b3/=33))write(6,*) "NG"
do k=1,is
if (v2(k)%a1/=21)write(6,*) "NG"
if (allocated(v2(k)%a2))write(6,*) "NG"
if (allocated(v2(k)%a3))write(6,*) "NG"
allocate(v2(k)%a3(2,3))
if (any(v2(k)%a3%b1/=31))write(6,*) "NG"
do kk2=1,3
do kk1=1,2
if (allocated(v2(k)%a3(kk1,kk2)%b2))write(6,*) "NG"
end do
end do
if (any(v2(k)%a3%b3/=33))write(6,*) "NG"
end do
do k=1,is
if (v3(k)%a1/=21)write(6,*) "NG"
if (allocated(v3(k)%a2))write(6,*) "NG"
if (allocated(v3(k)%a3))write(6,*) "NG"
allocate(v3(k)%a3(2,3))
if (any(v3(k)%a3%b1/=31))write(6,*) "NG"
do kk2=1,3
do kk1=1,2
if (allocated(v3(k)%a3(kk1,kk2)%b2))write(6,*) "NG"
end do
end do
if (any(v3(k)%a3%b3/=33))write(6,*) "NG"
end do
allocate(v4(is))
do k=1,is
if (v4(k)%a1/=21)write(6,*) "NG"
if (allocated(v4(k)%a2))write(6,*) "NG"
if (allocated(v4(k)%a3))write(6,*) "NG"
allocate(v4(k)%a3(2,3))
if (any(v4(k)%a3%b1/=31))write(6,*) "NG"
do kk2=1,3
do kk1=1,2
if (allocated(v4(k)%a3(kk1,kk2)%b2))write(6,*) "NG"
end do
end do
if (any(v3(k)%a3%b3/=33))write(6,*) "NG"
end do
end
