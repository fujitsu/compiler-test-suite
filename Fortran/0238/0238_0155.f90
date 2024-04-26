module m1
  type x0
     integer,allocatable:: x12(:)
     integer,allocatable:: x22(:)
     integer(8):: x11 
     integer(8):: x13 
     integer,allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type  y0
     integer:: x01 
type (x0),allocatable::v1
end type
type(y0):: v11
type (x0),allocatable::v2

allocate(v2)
allocate(v2%x02(2))
v2%x02(1)=1
v2%x02(2)=2

allocate( v11%v1 ,source=v2) 

if (v11%v1%x02(1)/=1) print *,101
if (v11%v1%x02(2)/=2) print *,102
if (v2%x02(1)/=1) print *,103
if (v2%x02(2)/=2) print *,104

v2%x02(1)=11
v2%x02(2)=12
if (v11%v1%x02(1)/=1) print *,201
if (v11%v1%x02(2)/=2) print *,202
if (v2%x02(1)/=11) print *,203
if (v2%x02(2)/=12) print *,204

deallocate (v2%x02)
if (allocated(v2%x02)) print *,301
if (allocated(v2%x12)) print *,301
if (allocated(v2%x22)) print *,301
if (v11%v1%x02(1)/=1) print *,302
if (v11%v1%x02(2)/=2) print *,303

deallocate (v11%v1%x02)
if (allocated(v11%v1%x02)) print *,401
if (allocated(v11%v1%x12)) print *,401
if (allocated(v11%v1%x22)) print *,401

end
call s1
call s1
call s1
call s1
print *,'pass'
end
