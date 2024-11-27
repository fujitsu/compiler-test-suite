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
call s1(is,1,2,3,4,5)
print *,'pass'
end
subroutine s1(ip,i1,i2,i3,i4,i5)
use m1
type(x1)::v2(ip)
type(x1)::w2(ip)
do k=1,is
if (v2(k)%a1/=21)write(6,*) "NG"
v2(k)%a1=v2(k)%a1+k*100
if (any(v2(k)%a2/=(/111,112,113/)))write(6,*) "NG"
v2(k)%a2=v2(k)%a2+(k-1)*100
if (allocated(v2(k)%a3))write(6,*) "NG"
if (allocated(v2(k)%a4))write(6,*) "NG"
if (any(v2(k)%a5/=(/'123','456','789'/)))write(6,*) "NG"
select case (k)
case (2)
v2(k)%a5=(/'abc','def','ghi'/)
case (3)
v2(k)%a5=(/'jkl','mno','pqr'/)
case (4)
v2(k)%a5=(/'stu','vwx','yz<'/)
case (5)
v2(k)%a5=(/'!"#','&()','=?+'/)
end select
if (associated(v2(k)%a6))write(6,*) "NG"
allocate(v2(k)%a4(2,3))
if (any(v2(k)%a4%a1/=21))write(6,*) "NG"
v2(k)%a4%a1=v2(k)%a4%a1+k*200
if (any(v2(k)%a4%a2(1)/='ab'))write(6,*) "NG"
if (any(v2(k)%a4%a2(2)/='cd'))write(6,*) "NG"
select case (k)
case (2)
v2(k)%a4%a2(1)='ef'
v2(k)%a4%a2(2)='ge'
case (3)
v2(k)%a4%a2(1)='hi'
v2(k)%a4%a2(2)='jk'
case (4)
v2(k)%a4%a2(1)='lm'
v2(k)%a4%a2(2)='no'
case (5)
v2(k)%a4%a2(1)='pq'
v2(k)%a4%a2(2)='rs'
end select
end do

v2(2:5)=v2(1:4)
do k=1,is
select case(k)
case(1,2)
if (v2(k)%a1/=121)write(6,*) "NG"
if (any(v2(k)%a2/=(/111,112,113/)))write(6,*) "NG"
if (allocated(v2(k)%a3))write(6,*) "NG"
if (.not.allocated(v2(k)%a4))write(6,*) "NG"
if (any(v2(k)%a5/=(/'123','456','789'/)))write(6,*) "NG"
if (associated(v2(k)%a6))write(6,*) "NG"
if (any(v2(k)%a4%a1/=221))write(6,*) "NG"
if (any(v2(k)%a4%a2(1)/='ab'))write(6,*) "NG"
if (any(v2(k)%a4%a2(2)/='cd'))write(6,*) "NG"
case(3)
if (v2(k)%a1/=121+100)write(6,*) "NG"
if (any(v2(k)%a2/=100+(/111,112,113/)))write(6,*) "NG"
if (allocated(v2(k)%a3))write(6,*) "NG"
if (.not.allocated(v2(k)%a4))write(6,*) "NG"
if (any(v2(k)%a5/=(/'abc','def','ghi'/)))write(6,*) "NG"
if (associated(v2(k)%a6))write(6,*) "NG"
if (any(v2(k)%a4%a1/=200*2+21))write(6,*) "NG"
if (any(v2(k)%a4%a2(1)/='ef'))write(6,*) "NG"
if (any(v2(k)%a4%a2(2)/='ge'))write(6,*) "NG"
case(4)
if (v2(k)%a1/=121+200)write(6,*) "NG"
if (any(v2(k)%a2/=200+(/111,112,113/)))write(6,*) "NG"
if (allocated(v2(k)%a3))write(6,*) "NG"
if (.not.allocated(v2(k)%a4))write(6,*) "NG"
if (any(v2(k)%a5/=(/'jkl','mno','pqr'/)))write(6,*) "NG"
if (associated(v2(k)%a6))write(6,*) "NG"
if (any(v2(k)%a4%a1/=200*3+21))write(6,*) "NG"
if (any(v2(k)%a4%a2(1)/='hi'))write(6,*) "NG"
if (any(v2(k)%a4%a2(2)/='jk'))write(6,*) "NG"
case(5)
if (v2(k)%a1/=121+300)write(6,*) "NG"
if (any(v2(k)%a2/=300+(/111,112,113/)))write(6,*) "NG"
if (allocated(v2(k)%a3))write(6,*) "NG"
if (.not.allocated(v2(k)%a4))write(6,*) "NG"
if (any(v2(k)%a5/=(/'stu','vwx','yz<'/)))write(6,*) "NG"
if (associated(v2(k)%a6))write(6,*) "NG"
if (any(v2(k)%a4%a1/=200*4+21))write(6,*) "NG"
if (any(v2(k)%a4%a2(1)/='lm'))write(6,*) "NG"
if (any(v2(k)%a4%a2(2)/='no'))write(6,*) "NG"
end select
end do
end
