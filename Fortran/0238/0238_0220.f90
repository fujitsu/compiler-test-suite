module m1
  type r
     integer:: x11 
     integer:: x12 
  end type
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
     type(r),allocatable:: x52(:)
     integer:: x11 
     integer,allocatable:: x12(:)
     integer,allocatable:: x92(:)
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1,v2

allocate(v2)
allocate(v2%x02(2))
v2%x02(1)=1
v2%x02(2)=2
allocate(v2%x92(2))
v2%x92(1)=-1
v2%x92(2)=-2
allocate(v2%x52(2))
v2%x52(1)%x11=-1
v2%x52(1)%x12=-2
v2%x52(2)%x11=-3
v2%x52(2)%x12=-4

allocate( v1 ,source=v2,stat=nmk) 
if (nmk/=0) print *,1230

if (v1%x02(1)/=1) print *,101
if (v1%x02(2)/=2) print *,102
if (v2%x02(1)/=1) print *,103
if (v2%x02(2)/=2) print *,104
if (v1%x92(1)/=-1) print *,101
if (v1%x92(2)/=-2) print *,102
if (v2%x92(1)/=-1) print *,103
if (v2%x92(2)/=-2) print *,104
if (v2%x52(1)%x11/=-1) print *,1031
if (v2%x52(1)%x12/=-2) print *,1032
if (v2%x52(2)%x11/=-3) print *,1041
if (v2%x52(2)%x12/=-4) print *,1042

v2%x52(1)%x11=-11
v2%x52(1)%x12=-12
v2%x52(2)%x11=-13
v2%x52(2)%x12=-14
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

if (v1%x52(1)%x11/=-1) print *,201
if (v1%x52(1)%x12/=-2) print *,201
if (v1%x52(2)%x11/=-3) print *,202
if (v1%x52(2)%x12/=-4) print *,202
if (v2%x52(1)%x11/=-11) print *,203
if (v2%x52(1)%x12/=-12) print *,203
if (v2%x52(2)%x11/=-13) print *,204
if (v2%x52(2)%x12/=-14) print *,204

deallocate (v2%x02)
if (allocated(v2%x02)) print *,301
if (v1%x02(1)/=1) print *,302
if (v1%x02(2)/=2) print *,303
if (v1%x92(1)/=-1) print *,302
if (v1%x92(2)/=-2) print *,303
if (v1%x52(1)%x11/=-1) print *,2201
if (v1%x52(1)%x12/=-2) print *,2201
if (v1%x52(2)%x11/=-3) print *,2202
if (v1%x52(2)%x12/=-4) print *,2202


deallocate (v1%x02)
if (allocated(v1%x02)) print *,401

if (allocated(v1%x12)) print *,801
if (allocated(v2%x12)) print *,802
end
call s1
call s1
call s1
call s1
print *,'pass'
end
