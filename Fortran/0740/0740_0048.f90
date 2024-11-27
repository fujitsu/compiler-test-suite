module m1
   type x0
     integer::a1=21
     character(len=2),dimension(2)::a2=(/'ab','cd'/)
   end type
   type x1
     integer::a1=21
     integer,allocatable,dimension(:,:)::a3
     type(x0),allocatable,dimension(:,:)::a4
   end type
   parameter (is=2)
end
use m1
type(x1)::v2(is)
if (allocated(v2(1)%a4))write(6,*) "NG"
print *,'pass'
end
