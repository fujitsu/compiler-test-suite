module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02
     integer:: x11 
     integer,allocatable:: x12
     integer,allocatable:: x92
     integer,allocatable:: x82
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1,v2

allocate(v2)
allocate(v2%x02)
allocate(v2%x92)
v2%x02=1
v2%x92=-1

allocate( v1 ,source=v2,stat=nmk) 
if (nmk/=0) print *,1230

if (v1%x02/=1) print *,101
if (v2%x02/=1) print *,103
if (v1%x92/=-1) print *,101
if (v2%x92/=-1) print *,103

v2%x02=11
v2%x92=-11
if (v1%x02/=1) print *,201
if (v2%x02/=11) print *,203
if (v1%x92/=-1) print *,201
if (v2%x92/=-11) print *,203

deallocate (v2%x02)
if (allocated(v2%x02)) print *,301
if (v1%x02/=1) print *,302
if (v1%x92/=-1) print *,302


deallocate (v1%x02)
if (allocated(v1%x02)) print *,401

if (allocated(v1%x12)) print *,801
if (allocated(v2%x12)) print *,901
if (allocated(v1%x82)) print *,801
if (allocated(v2%x82)) print *,901
end
call s1
call s1
call s1
call s1
print *,'pass'
end
