module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1,v2
integer(8)::nnnn
allocate( v1 )
v1%x01= 100
allocate(v1%x02(3))
v1%x02= 100

allocate(v2)
allocate(v2%x02(2))
v2%x02(1)=1
v2%x02(2)=2
nnnn=loc(v1)


allocate( v1 ,stat=kkk,source=v2) 

if (kkk==0) print *,401
if (loc(v1)/=nnnn) print *,1401
if (any(ubound(v1%x02)/=3)) print *,701
if (any(v1%x02/=100)) print *,702,v1%x02

if (v2%x02(1)/=1) print *,103
if (v2%x02(2)/=2) print *,104


v2%x02(1)=11
v2%x02(2)=12
if (any(ubound(v1%x02)/=3)) print *,1701
if (any(v1%x02/=100)) print *,1702
if (v2%x02(1)/=11) print *,203
if (v2%x02(2)/=12) print *,204

deallocate (v2%x02)
if (allocated(v2%x02)) print *,301
if (any(ubound(v1%x02)/=3)) print *,2701
if (any(v1%x02/=100)) print *,2702

deallocate (v1%x02)
if (allocated(v1%x02)) print *,401

end
call s1
call s1
call s1
print *,'pass'
end
