module m1
  type x0
     integer:: x01 
     character(2),allocatable:: x02(:)
     integer:: x11 
     integer,allocatable:: x12(:)
     character(1),allocatable:: x92(:)
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1,v2

allocate(v2)
allocate(v2%x02(2))
v2%x02(1)='11'
v2%x02(2)='22'
allocate(v2%x92(2))
v2%x92(1)='a'
v2%x92(2)='b'

allocate( v1 ,source=v2,stat=nmk) 
if (nmk/=0) print *,1230

if (v1%x02(1)/='11') print *,101
if (v1%x02(2)/='22') print *,102
if (v2%x02(1)/='11') print *,103
if (v2%x02(2)/='22') print *,104
if (v1%x92(1)/='a') print *,101
if (v1%x92(2)/='b') print *,102
if (v2%x92(1)/='a') print *,103
if (v2%x92(2)/='b') print *,104

v2%x02(1)='33'
v2%x02(2)='44'
v2%x92(1)='c'
v2%x92(2)='d'
if (v1%x02(1)/='11') print *,201
if (v1%x02(2)/='22') print *,202
if (v2%x02(1)/='33') print *,203
if (v2%x02(2)/='44') print *,204
if (v1%x92(1)/='a') print *,201
if (v1%x92(2)/='b') print *,202
if (v2%x92(1)/='c') print *,203
if (v2%x92(2)/='d') print *,204

deallocate (v2%x02)
if (allocated(v2%x02)) print *,301
if (v1%x02(1)/='11') print *,302
if (v1%x02(2)/='22') print *,303
if (v1%x92(1)/='a') print *,302
if (v1%x92(2)/='b') print *,303


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
