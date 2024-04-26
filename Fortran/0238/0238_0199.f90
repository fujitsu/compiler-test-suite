module m1
  type x0
     integer:: x01=101 
     integer:: x02=102
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1
integer(8)::nnnn
allocate( v1 )
if (v1%x01/=101) print *,101
if (v1%x02/=102) print *,102
v1%x01= 1
v1%x02= 2
nnnn=loc(v1)
if (v1%x01/=1) print *,111
if (v1%x02/=2) print *,112

allocate(v1, stat=kkk)

if (kkk==0) print *,401
if (loc(v1)/=nnnn) print *,1401
if (v1%x01/=1) print *,211
if (v1%x02/=2) print *,212

end
call s1
print *,'pass'
end
