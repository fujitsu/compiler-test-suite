module m1
  type x1
     integer:: x00 
  end type
  type x0
     integer:: x01 
     type(x1),pointer    :: x02(:)
  end type
end
subroutine s1
use m1
type (x0),pointer    ::v1,v2

allocate(v2)
allocate(v2%x02(2))
v2%x02(1)%x00=1
v2%x02(2)%x00=2

allocate( v1 ,source=v2,stat=knm) 
if (knm/=0) print *,8976

if (v1%x02(1)%x00/=1) print *,101
if (v1%x02(2)%x00/=2) print *,102
if (v2%x02(1)%x00/=1) print *,103
if (v2%x02(2)%x00/=2) print *,104

v2%x02(1)%x00=11
v2%x02(2)%x00=12
if (v1%x02(1)%x00/=11) print *,201
if (v1%x02(2)%x00/=12) print *,202
if (v2%x02(1)%x00/=11) print *,203
if (v2%x02(2)%x00/=12) print *,204

deallocate (v2%x02)
if (associated(v2%x02)) print *,301

end
call s1
print *,'pass'
end
