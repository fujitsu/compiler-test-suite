module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
     integer:: x11 
     integer,allocatable:: x12(:)
     integer,allocatable:: x92(:)
  end type
end
subroutine s1
use m1
type (x0),pointer    ::v1,v2

allocate(v2)
allocate(v2%x02(2))
v2%x02(1)=1
v2%x02(2)=2
allocate(v2%x92(2))
v2%x92(1)=-1
v2%x92(2)=-2

allocate( v1,stat=nmk ,source=v2) 
if (nmk/=0) print *,1230

if (v1%x02(1)/=1) print *,101
if (v1%x02(2)/=2) print *,102
if (v2%x02(1)/=1) print *,103
if (v2%x02(2)/=2) print *,104
if (v1%x92(1)/=-1) print *,101
if (v1%x92(2)/=-2) print *,102
if (v2%x92(1)/=-1) print *,103
if (v2%x92(2)/=-2) print *,104

v2%x02(1)=11
v2%x02(2)=12
v2%x92(1)=-11
v2%x92(2)=-12
if (v1%x02(1)/=1) print *,201
if (v1%x02(2)/=2) print *,202
if (v2%x02(1)/=11) print *,203
if (v2%x02(2)/=12) print *,204
if (v1%x92(1)/=-1) print *,201
if (v1%x92(2)/=-2) print *,202
if (v2%x92(1)/=-11) print *,203
if (v2%x92(2)/=-12) print *,204

deallocate (v2%x02)
if (allocated(v2%x02)) print *,301
if (v1%x02(1)/=1) print *,302
if (v1%x02(2)/=2) print *,303
if (v1%x92(1)/=-1) print *,302
if (v1%x92(2)/=-2) print *,303


deallocate (v1%x02)
if (allocated(v1%x02)) print *,401

if (allocated(v1%x12)) print *,801
if (allocated(v2%x12)) print *,802
end
call s1
print *,'pass'
end
