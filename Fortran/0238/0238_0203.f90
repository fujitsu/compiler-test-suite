module m1
type e
     integer(8):: y(2) 
     integer(8),allocatable:: yy (:)
end type
  type r
     integer:: x00(8) 
     complex,allocatable:: x11(:) 
     real,allocatable:: x12(:) 
     type(e),allocatable:: x13(:) 
     character,allocatable:: x14(:) 
  end type
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
     type(r),allocatable:: x52(:)
     integer:: x11 
     integer,allocatable:: x12(:)
     integer,allocatable:: x92(:)
  end type
type w1
integer::x(8)
type (x0),allocatable::v1(:)
end type
type w2
integer::x(80)
type (x0),allocatable::v2(:)
end type
contains
subroutine s1(vv1,vv2)
type (w1):: vv1(:)
type (w2)  :: vv2(:)

allocate( vv1(1)%v1 ,source=vv2(2)%v2,stat=knm) 
if (knm/=0) print *,777
end subroutine
end
subroutine ss
use m1
type (w1)            :: vv1(2)
type (w2)   :: vv2(2)
call s1(vv1,vv2)
end
print *,'pass'
end
