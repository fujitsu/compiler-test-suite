module m1
  type r
     integer:: x00(8) 
     integer,allocatable:: x11(:) 
     integer,allocatable:: x12(:) 
     integer,allocatable:: x13(:) 
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
allocate(v2%x52(1)%x11(2))
allocate(v2%x52(1)%x13(2))
allocate(v2%x52(2)%x11(2))
allocate(v2%x52(2)%x13(2))
v2%x52(1)%x11=-1
v2%x52(1)%x13=-2
v2%x52(2)%x11=-3
v2%x52(2)%x13=-4

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
if (any(v2%x52(1)%x11/=-1)) print *,1031
if (any(v2%x52(1)%x13/=-2)) print *,1032
if (any(v2%x52(2)%x11/=-3)) print *,1041
if (any(v2%x52(2)%x13/=-4)) print *,1042

v2%x52(1)%x11=-11
v2%x52(1)%x13=-12
v2%x52(2)%x11=-13
v2%x52(2)%x13=-14
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

if (any(v1%x52(1)%x11/=-1)) print *,201
if (any(v1%x52(1)%x13/=-2)) print *,201
if (any(v1%x52(2)%x11/=-3)) print *,202
if (any(v1%x52(2)%x13/=-4)) print *,202
if (any(v2%x52(1)%x11/=-11)) print *,203
if (any(v2%x52(1)%x13/=-12)) print *,203
if (any(v2%x52(2)%x11/=-13)) print *,204
if (any(v2%x52(2)%x13/=-14)) print *,204

deallocate (v2%x02)
if (allocated(v2%x02)) print *,301
if (v1%x02(1)/=1) print *,302
if (v1%x02(2)/=2) print *,303
if (v1%x92(1)/=-1) print *,302
if (v1%x92(2)/=-2) print *,303
if (any(v1%x52(1)%x11/=-1)) print *,2201
if (any(v1%x52(1)%x13/=-2)) print *,2201
if (any(v1%x52(2)%x11/=-3)) print *,2202
if (any(v1%x52(2)%x13/=-4)) print *,2202


deallocate (v1%x02)
if (allocated(v1%x02)) print *,401

if (allocated(v1%x12)) print *,801
if (allocated(v2%x12)) print *,8802
if (allocated(v2%x52(1)%x12)) print *,8812
if (allocated(v1%x52(1)%x12)) print *,8822
end
call s1
call s1
call s1
call s1
print *,'pass'
end
