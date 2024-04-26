module m1
  type x0
     integer:: x01 
     integer,pointer    :: x02(:)
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1,v2

allocate(v2)
allocate(v2%x02(2))
v2%x02(1)=1
v2%x02(2)=2

allocate( v1 ,stat=knm,source=v2) 
if (knm/=0) print *,8976

if (v1%x02(1)/=1) print *,101
if (v1%x02(2)/=2) print *,102
if (v2%x02(1)/=1) print *,103
if (v2%x02(2)/=2) print *,104

v2%x02(1)=11
v2%x02(2)=12
if (v1%x02(1)/=11) print *,201
if (v1%x02(2)/=12) print *,202
if (v2%x02(1)/=11) print *,203
if (v2%x02(2)/=12) print *,204

deallocate (v2%x02)
if (associated(v2%x02)) print *,301

end
call s1
print *,'pass'
end
