module m1
  type x0
     integer(8):: x11 
     integer(8):: x12 
     integer,allocatable:: x02
  end type
end
subroutine s1
use m1
type y
integer::v0
type (x0),allocatable::v1
end type
type (x0),allocatable::v1
type (y):: v11
type yy
integer::v0
type (x0),allocatable::v2
end type
type (yy):: v3

allocate(v3%v2)
allocate(v3%v2%x02)
v3%v2%x02=1

allocate( v1 ,source=v3%v2,stat=nmk) 
if (nmk/=0) print *,1230

if (v1%x02/=1) print *,101
if (v3%v2%x02/=1) print *,103

v3%v2%x02=11
if (v1%x02/=1) print *,201
if (v3%v2%x02/=11) print *,203

deallocate (v3%v2%x02)
if (allocated(v3%v2%x02)) print *,301
if (v1%x02/=1) print *,302


deallocate (v1%x02)
if (allocated(v1%x02)) print *,401

end
call s1
print *,'pass'
end
