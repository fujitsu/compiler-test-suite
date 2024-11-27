module m1
   type x0
     integer::a1=21
     character(len=2),dimension(2)::a2=(/'ab','cd'/)
   end type
   type x1
     integer::a1=21
     integer,dimension(3)::a2=(/111,112,113/)
     integer,allocatable,dimension(:,:)::a3
     type(x0),allocatable,dimension(:,:)::a4
     character(len=3),dimension(3)::a5=(/'123','456','789'/)
     integer,pointer,dimension(:,:)::a6=>null()
   end type
   parameter (is=5)
end
use m1
call s1(is)
print *,'pass'
end
subroutine s1(ip)
use m1
type(x1)::v1,v2(is),v3(ip)
type(x1)::w1,w2(is),w3(ip)
if (v1%a1/=21)write(6,*) "NG"
if (any(v1%a2/=(/111,112,113/)))write(6,*) "NG"
if (allocated(v1%a3))write(6,*) "NG"
if (allocated(v1%a4))write(6,*) "NG"
if (any(v1%a5/=(/'123','456','789'/)))write(6,*) "NG"
if (associated(v1%a6))write(6,*) "NG"
allocate(v1%a4(2,3))
if (any(v1%a4%a1/=21))write(6,*) "NG"
if (any(v1%a4%a2(1)/='ab'))write(6,*) "NG"
if (any(v1%a4%a2(2)/='cd'))write(6,*) "NG"
do k=1,is
if (v2(k)%a1/=21)write(6,*) "NG"
if (any(v2(k)%a2/=(/111,112,113/)))write(6,*) "NG"
if (allocated(v2(k)%a3))write(6,*) "NG"
if (allocated(v2(k)%a4))write(6,*) "NG"
if (any(v2(k)%a5/=(/'123','456','789'/)))write(6,*) "NG"
if (associated(v2(k)%a6))write(6,*) "NG"
allocate(v2(k)%a4(2,3))
if (any(v2(k)%a4%a1/=21))write(6,*) "NG"
if (any(v2(k)%a4%a2(1)/='ab'))write(6,*) "NG"
if (any(v2(k)%a4%a2(2)/='cd'))write(6,*) "NG"
end do
do k=1,is
if (v3(k)%a1/=21)write(6,*) "NG"
if (any(v3(k)%a2/=(/111,112,113/)))write(6,*) "NG"
if (allocated(v3(k)%a3))write(6,*) "NG"
if (allocated(v3(k)%a4))write(6,*) "NG"
if (any(v3(k)%a5/=(/'123','456','789'/)))write(6,*) "NG"
if (associated(v3(k)%a6))write(6,*) "NG"
allocate(v3(k)%a4(2,3))
if (any(v3(k)%a4%a1/=21))write(6,*) "NG"
if (any(v3(k)%a4%a2(1)/='ab'))write(6,*) "NG"
if (any(v3(k)%a4%a2(2)/='cd'))write(6,*) "NG"
end do
v1=v1
v2=v2
v3=v3
if (v1%a1/=21)write(6,*) "NG"
if (any(v1%a2/=(/111,112,113/)))write(6,*) "NG"
if (allocated(v1%a3))write(6,*) "NG"
if (.not.allocated(v1%a4))write(6,*) "NG"
if (any(v1%a5/=(/'123','456','789'/)))write(6,*) "NG"
if (associated(v1%a6))write(6,*) "NG"
if (any(v1%a4%a1/=21))write(6,*) "NG"
if (any(v1%a4%a2(1)/='ab'))write(6,*) "NG"
if (any(v1%a4%a2(2)/='cd'))write(6,*) "NG"
do k=1,is
if (v2(k)%a1/=21)write(6,*) "NG"
if (any(v2(k)%a2/=(/111,112,113/)))write(6,*) "NG"
if (allocated(v2(k)%a3))write(6,*) "NG"
if (.not.allocated(v2(k)%a4))write(6,*) "NG"
if (any(v2(k)%a5/=(/'123','456','789'/)))write(6,*) "NG"
if (associated(v2(k)%a6))write(6,*) "NG"
if (any(v2(k)%a4%a1/=21))write(6,*) "NG"
if (any(v2(k)%a4%a2(1)/='ab'))write(6,*) "NG"
if (any(v2(k)%a4%a2(2)/='cd'))write(6,*) "NG"
end do
do k=1,is
if (v3(k)%a1/=21)write(6,*) "NG"
if (any(v3(k)%a2/=(/111,112,113/)))write(6,*) "NG"
if (allocated(v3(k)%a3))write(6,*) "NG"
if (.not.allocated(v3(k)%a4))write(6,*) "NG"
if (any(v3(k)%a5/=(/'123','456','789'/)))write(6,*) "NG"
if (associated(v3(k)%a6))write(6,*) "NG"
if (any(v3(k)%a4%a1/=21))write(6,*) "NG"
if (any(v3(k)%a4%a2(1)/='ab'))write(6,*) "NG"
if (any(v3(k)%a4%a2(2)/='cd'))write(6,*) "NG"
end do
end
