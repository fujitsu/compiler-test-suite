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
call s1(is)
print *,'pass'
end
subroutine s1(ip)
use m1
type(x1)::v1,v2(is),v3(ip)
end
