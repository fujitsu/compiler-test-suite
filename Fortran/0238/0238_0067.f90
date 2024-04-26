module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1,v2

allocate(v2)
allocate(v2%x02)
v2%x02=1

allocate( v1 ,source=v2) 

if (v1%x02/=1) print *,101
if (v2%x02/=1) print *,103

v2%x02=11
if (v1%x02/=1) print *,201
if (v2%x02/=11) print *,203

deallocate (v2%x02)
if (allocated(v2%x02)) print *,301
if (v1%x02/=1) print *,302


deallocate (v1%x02)
if (allocated(v1%x02)) print *,401

end
call s1
print *,'pass'
end
