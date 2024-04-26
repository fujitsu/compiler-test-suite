module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
  end type
contains
subroutine s1
type (x0),allocatable::v1(:)
type (x0)::v2(2)

v2%x01=1
allocate( v1 ,source=v2,stat=knm) 
if (knm/=0) print *,777
if (any(v2%x01/=1)) print *,101
if (allocated(v2(1)%x02)) print *,201
if (allocated(v1(1)%x02)) print *,202
if (allocated(v2(2)%x02)) print *,301
if (allocated(v1(2)%x02)) print *,302
end subroutine
end
use m1
call s1
print *,'pass'
end
