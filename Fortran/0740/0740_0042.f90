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
   parameter (is=2)
end
use m1
type(x1)::v2(is)
k=1
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
print *,'pass'
end
