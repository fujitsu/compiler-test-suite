module mod
integer(1),allocatable::i1(:),ii1(:)
integer(2),allocatable::i2(:),ii2(:)
integer(4),allocatable::i4(:),ii4(:)
integer(8),allocatable::i8(:),ii8(:)
real(4),allocatable::r1(:),rr1(:)
real(8),allocatable::d1(:),dd1(:)
real(16),allocatable::q1(:),qq1(:)
complex(4),allocatable::c1(:),cc1(:)
complex(8),allocatable::cd1(:),ccd1(:)
complex(16),allocatable::cq1(:),ccq1(:)
logical(1),allocatable::l1(:),ll1(:)
logical(2),allocatable::l2(:),ll2(:)
logical(4),allocatable::l4(:),ll4(:)
logical(8),allocatable::l8(:),ll8(:)
character(1,1),allocatable::ch1(:),cch1(:)
end module
use mod
call aaaa
print *,'pass'
contains
subroutine aaaa
allocate(i1(3))
allocate(i2(3))
allocate(i4(3))
allocate(i8(3))
allocate(r1(3))
allocate(d1(3))
allocate(q1(3))
allocate(c1(3))
allocate(cd1(3))
allocate(cq1(3))
allocate(l1(3))
allocate(l2(3))
allocate(l4(3))
allocate(l8(3))
allocate(ch1(3))

i1 =(/1,2,3/)
i2 =(/1,2,3/)
i4 =(/1,2,3/)
i8 =(/1,2,3/)
r1 =(/1.0,2.0,3.0/)
d1 =(/1.0d0,2.0d0,3.0d0/)
q1 =(/1.0q0,2.0q0,3.0q0/)
c1 =(/(1.0,1.0),(2.0,2.0),(3.0,3.0)/)
cd1 =(/(1.0d0,1.0d0),(2.0d0,2.0d0),(3.0d0,3.0d0)/)
cq1 =(/(1.0q0,1.0q0),(2.0q0,2.0q0),(3.0q0,3.0q0)/)
l1 =(/.true.,.true.,.true./)
l2 =(/.true.,.true.,.true./)
l4 =(/.true.,.true.,.true./)
l8 =(/.true.,.true.,.true./)
ch1 =1_"a"

call move_alloc(i1, ii1)
call move_alloc(i2, ii2)
call move_alloc(i4, ii4)
call move_alloc(i8, ii8)
call move_alloc(r1, rr1)
call move_alloc(d1, dd1)
call move_alloc(q1, qq1)
call move_alloc(c1, cc1)
call move_alloc(cd1, ccd1)
call move_alloc(cq1, ccq1)
call move_alloc(l1, ll1)
call move_alloc(l2, ll2)
call move_alloc(l4, ll4)
call move_alloc(l8, ll8)
call move_alloc(ch1, cch1)

if(allocated(i1).neqv..false.) write(6,*) "NG"
if(allocated(ii1).neqv..true.) write(6,*) "NG"
if(any(ii1/=(/1,2,3/))) write(6,*) "NG"
if(allocated(i2).neqv..false.) write(6,*) "NG"
if(allocated(ii2).neqv..true.) write(6,*) "NG"
if(any(ii2/=(/1,2,3/))) write(6,*) "NG"
if(allocated(i4).neqv..false.) write(6,*) "NG"
if(allocated(ii4).neqv..true.) write(6,*) "NG"
if(any(ii4/=(/1,2,3/))) write(6,*) "NG"
if(allocated(i8).neqv..false.) write(6,*) "NG"
if(allocated(ii8).neqv..true.) write(6,*) "NG"
if(any(ii8/=(/1,2,3/))) write(6,*) "NG"
if(allocated(r1).neqv..false.) write(6,*) "NG"
if(allocated(rr1).neqv..true.) write(6,*) "NG"
if(any(rr1/=(/1.0,2.0,3.0/))) write(6,*) "NG"
if(allocated(d1).neqv..false.) write(6,*) "NG"
if(allocated(dd1).neqv..true.) write(6,*) "NG"
if(any(dd1/=(/1.0d0,2.0d0,3.0d0/))) write(6,*) "NG"
if(allocated(q1).neqv..false.) write(6,*) "NG"
if(allocated(qq1).neqv..true.) write(6,*) "NG"
if(any(qq1/=(/1.0q0,2.0q0,3.0q0/))) write(6,*) "NG"
if(allocated(c1).neqv..false.) write(6,*) "NG"
if(allocated(cc1).neqv..true.) write(6,*) "NG"
if(any(cc1/=(/(1.0,1.0),(2.0,2.0),(3.0,3.0)/))) write(6,*) "NG"
if(allocated(cd1).neqv..false.) write(6,*) "NG"
if(allocated(ccd1).neqv..true.) write(6,*) "NG"
if(any(ccd1/=(/(1.0d0,1.0d0),(2.0d0,2.0d0),(3.0d0,3.0d0)/))) write(6,*) "NG"
if(allocated(cq1).neqv..false.) write(6,*) "NG"
if(allocated(ccq1).neqv..true.) write(6,*) "NG"
if(any(ccq1/=(/(1.0q0,1.0q0),(2.0q0,2.0q0),(3.0q0,3.0q0)/))) write(6,*) "NG"
if(allocated(l1).neqv..false.) write(6,*) "NG"
if(allocated(ll1).neqv..true.) write(6,*) "NG"
if(any(ll1.neqv.(/.true.,.true.,.true./))) write(6,*) "NG"
if(allocated(l2).neqv..false.) write(6,*) "NG"
if(allocated(ll2).neqv..true.) write(6,*) "NG"
if(any(ll2.neqv.(/.true.,.true.,.true./))) write(6,*) "NG"
if(allocated(l4).neqv..false.) write(6,*) "NG"
if(allocated(ll4).neqv..true.) write(6,*) "NG"
if(any(ll4.neqv.(/.true.,.true.,.true./))) write(6,*) "NG"
if(allocated(l8).neqv..false.) write(6,*) "NG"
if(allocated(ll8).neqv..true.) write(6,*) "NG"
if(any(ll8.neqv.(/.true.,.true.,.true./))) write(6,*) "NG"
if(allocated(ch1).neqv..false.) write(6,*) "NG"
if(allocated(cch1).neqv..true.) write(6,*) "NG"
if(any(cch1/=(/"a","a","a"/))) write(6,*) "NG"
end subroutine
end
