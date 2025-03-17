module m
type a
 integer a1(2,2,2)
 integer a2
 integer,pointer:: a1p(:,:,:)
 integer,pointer:: a2p
end type
type b
 type(a):: b1(2,2,2)
 type(a):: b2
 type(a),pointer:: b1p(:,:,:)
 type(a),pointer:: b2p
end type
type c
 type(b):: c1(2,2,2)
 type(b):: c2
 type(b),pointer:: c1p(:,:,:)
 type(b),pointer:: c2p
end type
type (c):: d1(2,2,2)
type (c):: d2
type (c),pointer:: d1p(:,:,:)
type (c),pointer:: d2p
interface alloc
module procedure allocd1p,allocd2p
module procedure allocc1p,allocc2p
module procedure allocb1p,allocb2p
module procedure alloca1p,alloca2p
end interface
interface any
module procedure scalar_any
end interface
contains
function scalar_any(f)
logical scalar_any
logical,intent(in)::f
scalar_any=f
end function
subroutine allocd1p(d1p)
type (c),pointer:: d1p(:,:,:)
allocate(d1p(2,2,2))
do i1=1,2; do i2=1,2; do i3=1,2
call alloc(d1p(i1,i2,i3)%c1p)
call alloc(d1p(i1,i2,i3)%c2p)
do j1=1,2; do j2=1,2; do j3=1,2
call alloc(d1p(i1,i2,i3)%c1(j1,j2,j3)%b1p)
call alloc(d1p(i1,i2,i3)%c1(j1,j2,j3)%b2p)
do k1=1,2; do k2=1,2; do k3=1,2
call alloc(d1p(i1,i2,i3)%c1(j1,j2,j3)%b1(k1,k2,k3)%a1p)
call alloc(d1p(i1,i2,i3)%c1(j1,j2,j3)%b1(k1,k2,k3)%a2p)
end do;end do;end do
end do;end do;end do
call alloc(d1p(i1,i2,i3)%c2%b1p)
call alloc(d1p(i1,i2,i3)%c2%b2p)
do k1=1,2; do k2=1,2; do k3=1,2
call alloc(d1p(i1,i2,i3)%c2%b1(k1,k2,k3)%a1p)
call alloc(d1p(i1,i2,i3)%c2%b1(k1,k2,k3)%a2p)
end do;end do;end do
call alloc(d1p(i1,i2,i3)%c2%b2%a1p)
call alloc(d1p(i1,i2,i3)%c2%b2%a2p)
end do;end do;end do
end subroutine
subroutine allocd2p(d2p)
type (c),pointer:: d2p
allocate(d2p)
call alloc(d2p%c1p)
call alloc(d2p%c2p)
do j1=1,2; do j2=1,2; do j3=1,2
call alloc(d2p%c1(j1,j2,j3)%b1p)
call alloc(d2p%c1(j1,j2,j3)%b2p)
end do;end do;end do
call alloc(d2p%c2%b1p)
call alloc(d2p%c2%b2p)
do k1=1,2; do k2=1,2; do k3=1,2
call alloc(d2p%c2%b1(k1,k2,k3)%a1p)
call alloc(d2p%c2%b1(k1,k2,k3)%a2p)
end do;end do;end do
end subroutine
subroutine allocc1p(c1p)
type (b),pointer:: c1p(:,:,:)
allocate(c1p(2,2,2))
do i1=1,2; do i2=1,2; do i3=1,2
call alloc(c1p(i1,i2,i3)%b1p)
call alloc(c1p(i1,i2,i3)%b2p)
do j1=1,2; do j2=1,2; do j3=1,2
call alloc(c1p(i1,i2,i3)%b1(j1,j2,j3)%a1p)
call alloc(c1p(i1,i2,i3)%b1(j1,j2,j3)%a2p)
end do;end do;end do
call alloc(c1p(i1,i2,i3)%b2%a1p)
call alloc(c1p(i1,i2,i3)%b2%a2p)
end do;end do;end do
end subroutine
subroutine allocc2p(c2p)
type (b),pointer:: c2p
allocate(c2p)
call alloc(c2p%b1p)
call alloc(c2p%b2p)
do j1=1,2; do j2=1,2; do j3=1,2
call alloc(c2p%b1(j1,j2,j3)%a1p)
call alloc(c2p%b1(j1,j2,j3)%a2p)
end do;end do;end do
call alloc(c2p%b2%a1p)
call alloc(c2p%b2%a2p)
end subroutine
subroutine allocb1p(b1p)
type (a),pointer:: b1p(:,:,:)
allocate(b1p(2,2,2))
do i1=1,2; do i2=1,2; do i3=1,2
call alloc(b1p(i1,i2,i3)%a1p)
call alloc(b1p(i1,i2,i3)%a2p)
end do;end do;end do
end subroutine
subroutine allocb2p(b2p)
type (a),pointer:: b2p
allocate(b2p)
call alloc(b2p%a1p)
call alloc(b2p%a2p)
end subroutine
subroutine alloca1p(a1p)
integer,pointer:: a1p(:,:,:)
allocate(a1p(2,2,2))
end subroutine
subroutine alloca2p(a2p)
integer,pointer:: a2p
allocate(a2p)
end subroutine
end
subroutine s00
use m
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d1%c1(j1,j2,j3)%b2%a2=1
d1(i1,i2,i3)%c1%b2%a2=1
d1(i1,i2,i3)%c1(j1,j2,j3)%b2%a2=1
d1(i1,i2,i3)%c1(j1,j2,j3)%b2%a2=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (any(d1%c1(j1,j2,j3)%b2%a2/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1%b2%a2/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1(j1,j2,j3)%b2%a2/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1(j1,j2,j3)%b2%a2/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine s000
use m
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d1%c1(j1,j2,j3)%b1(k1,k2,k3)%a2=1
d1(i1,i2,i3)%c1%b1(k1,k2,k3)%a2=1
d1(i1,i2,i3)%c1(j1,j2,j3)%b1%a2=1
d1(i1,i2,i3)%c1(j1,j2,j3)%b1(k1,k2,k3)%a2=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (any(d1%c1(j1,j2,j3)%b1(k1,k2,k3)%a2/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1%b1(k1,k2,k3)%a2/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1(j1,j2,j3)%b1%a2/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1(j1,j2,j3)%b1(k1,k2,k3)%a2/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1pc1b2pa2p
use m
call alloc(d1p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(ii1,ii2,ii3)%c1(j1,j2,j3)%b2p%a2p=1
end do; end do; end do
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(i1,i2,i3)%c1(ii1,ii2,ii3)%b2p%a2p=1
end do; end do; end do
d1p(i1,i2,i3)%c1(j1,j2,j3)%b2p%a2p=1
d1p(i1,i2,i3)%c1(j1,j2,j3)%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1p(ii1,ii2,ii3)%c1(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
if (   (d1p(i1,i2,i3)%c1(ii1,ii2,ii3)%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d1p(i1,i2,i3)%c1(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
if (any(d1p(i1,i2,i3)%c1(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2pc1b2pa2p
use m
call alloc(d2p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2p%c1(j1,j2,j3)%b2p%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d2p%c1(ii1,ii2,ii3)%b2p%a2p=1
end do; end do; end do
d2p%c1(j1,j2,j3)%b2p%a2p=1
d2p%c1(j1,j2,j3)%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2p%c1(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d2p%c1(ii1,ii2,ii3)%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d2p%c1(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
if (any(d2p%c1(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1pc2b2pa2p
use m
call alloc(d1p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(ii1,ii2,ii3)%c2%b2p%a2p=1
end do; end do; end do
d1p(i1,i2,i3)%c2%b2p%a2p=1
d1p(i1,i2,i3)%c2%b2p%a2p=1
d1p(i1,i2,i3)%c2%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1p(ii1,ii2,ii3)%c2%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (   (d1p(i1,i2,i3)%c2%b2p%a2p/=1))write(6,*) "NG"
if (any(d1p(i1,i2,i3)%c2%b2p%a2p/=1))write(6,*) "NG"
if (any(d1p(i1,i2,i3)%c2%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2pc2b2pa2p
use m
call alloc(d2p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2p%c2%b2p%a2p=1
d2p%c2%b2p%a2p=1
d2p%c2%b2p%a2p=1
d2p%c2%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2p%c2%b2p%a2p/=1))write(6,*) "NG"
if (   (d2p%c2%b2p%a2p/=1))write(6,*) "NG"
if (any(d2p%c2%b2p%a2p/=1))write(6,*) "NG"
if (any(d2p%c2%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1c1pb2pa2p
use m
do i1=1,2;do i2=1,2;do i3=1,2
call alloc(d1(i1,i2,i3)%c1p)
end do;end do;end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1(ii1,ii2,ii3)%c1p(j1,j2,j3)%b2p%a2p=1
end do;end do;end do
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1(i1,i2,i3)%c1p(ii1,ii2,ii3)%b2p%a2p=1
end do;end do;end do
d1(i1,i2,i3)%c1p(j1,j2,j3)%b2p%a2p=1
d1(i1,i2,i3)%c1p(j1,j2,j3)%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1(ii1,ii2,ii3)%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
end do;end do;end do
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1(i1,i2,i3)%c1p(ii1,ii2,ii3)%b2p%a2p/=1))write(6,*) "NG"
end do;end do;end do
if (any(d1(i1,i2,i3)%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2c1pb2pa2p
use m
call alloc(d2%c1p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2%c1p(j1,j2,j3)%b2p%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d2%c1p(ii1,ii2,ii3)%b2p%a2p=1
end do; end do; end do
d2%c1p(j1,j2,j3)%b2p%a2p=1
d2%c1p(j1,j2,j3)%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d2%c1p(ii1,ii2,ii3)%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d2%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
if (any(d2%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1c2pb2pa2p
use m
do i1=1,2;do i2=1,2;do i3=1,2
call alloc(d1(i1,i2,i3)%c2p)
end do;end do;end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1(ii1,ii2,ii3)%c2p%b2p%a2p=1
end do;end do;end do
d1(i1,i2,i3)%c2p%b2p%a2p=1
d1(i1,i2,i3)%c2p%b2p%a2p=1
d1(i1,i2,i3)%c2p%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1(ii1,ii2,ii3)%c2p%b2p%a2p/=1))write(6,*) "NG"
end do;end do;end do
if (   (d1(i1,i2,i3)%c2p%b2p%a2p/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c2p%b2p%a2p/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c2p%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2c2pb2pa2p
use m
call alloc(d2%c2p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2%c2p%b2p%a2p=1
d2%c2p%b2p%a2p=1
d2%c2p%b2p%a2p=1
d2%c2p%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2%c2p%b2p%a2p/=1))write(6,*) "NG"
if (   (d2%c2p%b2p%a2p/=1))write(6,*) "NG"
if (any(d2%c2p%b2p%a2p/=1))write(6,*) "NG"
if (any(d2%c2p%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1pc1pb2pa2p
use m
call alloc(d1p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(ii1,ii2,ii3)%c1p(j1,j2,j3)%b2p%a2p=1
d1p(i1,i2,i3)%c1p(ii1,ii2,ii3)%b2p%a2p=1
end do;end do;end do
d1p(i1,i2,i3)%c1p(j1,j2,j3)%b2p%a2p=1
d1p(i1,i2,i3)%c1p(j1,j2,j3)%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1p(ii1,ii2,ii3)%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
if (   (d1p(i1,i2,i3)%c1p(ii1,ii2,ii3)%b2p%a2p/=1))write(6,*) "NG"
end do;end do;end do
if (any(d1p(i1,i2,i3)%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
if (any(d1p(i1,i2,i3)%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2pc1pb2pa2p
use m
call alloc(d2p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2p%c1p(j1,j2,j3)%b2p%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d2p%c1p(ii1,ii2,ii3)%b2p%a2p=1
end do; end do; end do
d2p%c1p(j1,j2,j3)%b2p%a2p=1
d2p%c1p(j1,j2,j3)%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2p%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d2p%c1p(ii1,ii2,ii3)%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d2p%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
if (any(d2p%c1p(j1,j2,j3)%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1pc2pb2pa2p
use m
call alloc(d1p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(ii1,ii2,ii3)%c2p%b2p%a2p=1
end do; end do; end do
d1p(i1,i2,i3)%c2p%b2p%a2p=1
d1p(i1,i2,i3)%c2p%b2p%a2p=1
d1p(i1,i2,i3)%c2p%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1p(ii1,ii2,ii3)%c2p%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (   (d1p(i1,i2,i3)%c2p%b2p%a2p/=1))write(6,*) "NG"
if (any(d1p(i1,i2,i3)%c2p%b2p%a2p/=1))write(6,*) "NG"
if (any(d1p(i1,i2,i3)%c2p%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2pc2pb2pa2p
use m
call alloc(d2p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2p%c2p%b2p%a2p=1
d2p%c2p%b2p%a2p=1
d2p%c2p%b2p%a2p=1
d2p%c2p%b2p%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2p%c2p%b2p%a2p/=1))write(6,*) "NG"
if (   (d2p%c2p%b2p%a2p/=1))write(6,*) "NG"
if (any(d2p%c2p%b2p%a2p/=1))write(6,*) "NG"
if (any(d2p%c2p%b2p%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1pc1b1pa2p
use m
call alloc(d1p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(ii1,ii2,ii3)%c1(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(i1,i2,i3)%c1(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p=1
d1p(i1,i2,i3)%c1(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d1p(i1,i2,i3)%c1(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1p(ii1,ii2,ii3)%c1(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (   (d1p(i1,i2,i3)%c1(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (any(d1p(i1,i2,i3)%c1(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d1p(i1,i2,i3)%c1(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2pc1b1pa2p
use m
call alloc(d2p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2p%c1(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d2p%c1(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p=1
d2p%c1(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d2p%c1(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2p%c1(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d2p%c1(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (any(d2p%c1(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d2p%c1(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1pc2b1pa2p
use m
call alloc(d1p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(ii1,ii2,ii3)%c2%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
d1p(i1,i2,i3)%c2%b1p(k1,k2,k3)%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(i1,i2,i3)%c2%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d1p(i1,i2,i3)%c2%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1p(ii1,ii2,ii3)%c2%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (   (d1p(i1,i2,i3)%c2%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (any(d1p(i1,i2,i3)%c2%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d1p(i1,i2,i3)%c2%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2pc2b1pa2p
use m
call alloc(d2p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2p%c2%b1p(k1,k2,k3)%a2p=1
d2p%c2%b1p(k1,k2,k3)%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d2p%c2%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d2p%c2%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2p%c2%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (   (d2p%c2%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (any(d2p%c2%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d2p%c2%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1c1pb1pa2p
use m
do i1=1,2;do i2=1,2;do i3=1,2
call alloc(d1(i1,i2,i3)%c1p)
end do;end do;end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1(ii1,ii2,ii3)%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
end do;end do;end do
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1(i1,i2,i3)%c1p(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p=1
d1(i1,i2,i3)%c1p(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p=1
end do;end do;end do
d1(i1,i2,i3)%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1(ii1,ii2,ii3)%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do;end do;end do
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1(i1,i2,i3)%c1p(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1p(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do;end do;end do
if (any(d1(i1,i2,i3)%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2c1pb1pa2p
use m
call alloc(d2%c1p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d2%c1p(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p=1
d2%c1p(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d2%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d2%c1p(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (any(d2%c1p(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d2%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1c2pb1pa2p
use m
do i1=1,2;do i2=1,2;do i3=1,2
call alloc(d1(i1,i2,i3)%c2p)
end do;end do;end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1(ii1,ii2,ii3)%c2p%b1p(k1,k2,k3)%a2p=1
end do;end do;end do
d1(i1,i2,i3)%c2p%b1p(k1,k2,k3)%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1(i1,i2,i3)%c2p%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d1(i1,i2,i3)%c2p%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1(ii1,ii2,ii3)%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do;end do;end do
if (   (d1(i1,i2,i3)%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (any(d1(i1,i2,i3)%c2p%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do;end do;end do
if (any(d1(i1,i2,i3)%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2c2pb1pa2p
use m
call alloc(d2%c2p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2%c2p%b1p(k1,k2,k3)%a2p=1
d2%c2p%b1p(k1,k2,k3)%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d2%c2p%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d2%c2p%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (   (d2%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (any(d2%c2p%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d2%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1pc1pb1pa2p
use m
call alloc(d1p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(ii1,ii2,ii3)%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
d1p(i1,i2,i3)%c1p(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p=1
end do;end do;end do
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(i1,i2,i3)%c1p(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d1p(i1,i2,i3)%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1p(ii1,ii2,ii3)%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (   (d1p(i1,i2,i3)%c1p(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (any(d1p(i1,i2,i3)%c1p(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do;end do;end do
if (any(d1p(i1,i2,i3)%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2pc1pb1pa2p
use m
call alloc(d2p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2p%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d2p%c1p(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p=1
d2p%c1p(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d2p%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2p%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d2p%c1p(ii1,ii2,ii3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (any(d2p%c1p(j1,j2,j3)%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d2p%c1p(j1,j2,j3)%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d1pc2pb1pa2p
use m
call alloc(d1p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(ii1,ii2,ii3)%c2p%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
d1p(i1,i2,i3)%c2p%b1p(k1,k2,k3)%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d1p(i1,i2,i3)%c2p%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d1p(i1,i2,i3)%c2p%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (   (d1p(ii1,ii2,ii3)%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (   (d1p(i1,i2,i3)%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (any(d1p(i1,i2,i3)%c2p%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d1p(i1,i2,i3)%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
subroutine d2pc2pb1pa2p
use m
call alloc(d2p)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d2p%c2p%b1p(k1,k2,k3)%a2p=1
d2p%c2p%b1p(k1,k2,k3)%a2p=1
do ii1=1,2;do ii2=1,2;do ii3=1,2
d2p%c2p%b1p(ii1,ii2,ii3)%a2p=1
end do; end do; end do
d2p%c2p%b1p(k1,k2,k3)%a2p=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (   (d2p%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
if (   (d2p%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
do ii1=1,2;do ii2=1,2;do ii3=1,2
if (any(d2p%c2p%b1p(ii1,ii2,ii3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
if (any(d2p%c2p%b1p(k1,k2,k3)%a2p/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
end
call s00
call d1pc1b1pa2p
call d2pc1b1pa2p
call d1pc2b1pa2p
call d2pc2b1pa2p
call d1c1pb1pa2p
call d2c1pb1pa2p
call d1c2pb1pa2p
call d2c2pb1pa2p
call d1pc1pb1pa2p
call d2pc1pb1pa2p
call d1pc2pb1pa2p
call d2pc2pb1pa2p
call s000
call d1pc1b2pa2p
call d2pc1b2pa2p
call d1pc2b2pa2p
call d2pc2b2pa2p
call d1c1pb2pa2p
call d2c1pb2pa2p
call d1c2pb2pa2p
call d2c2pb2pa2p
call d1pc1pb2pa2p
call d2pc1pb2pa2p
call d1pc2pb2pa2p
call d2pc2pb2pa2p
print *,'pass'
end
