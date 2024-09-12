module m1
type b
  integer::ba
end type
type ,extends(b):: e1
  private
  integer::e1a=1
end type
contains
subroutine s2
type(e1),parameter::p07=e1(2,3)
type(e1),parameter::p08=e1(e1a=3,ba=2)
type(e1),parameter::p09=e1(ba=2,e1a=3)
type(e1),parameter::p10=e1(   2,e1a=3)
type(e1),parameter::p11=e1(b(2),3)
type(e1),parameter::p12=e1(e1a=3,b=b(2))
type(e1),parameter::p13=e1(b=b(2),e1a=3)
type(e1),parameter::p14=e1(b(ba=2),e1a=3)
type(e1),parameter::p15=e1(b(ba=2),3)
type(e1),parameter::p16=e1(e1a=3,b=b(ba=2))
type(e1),parameter::p17=e1(b=b(ba=2),e1a=3)
type(e1),parameter::p18=e1(b(ba=2),e1a=3)
type(e1)          ::v07,v08,v09,v10,v11,v12,v13,v14,v15,v16,v17,v18
v11=e1(b(2),3)
v12=e1(e1a=3,b=b(2))
v13=e1(b=b(2),e1a=3)
v14=e1(b(ba=2),e1a=3)
v15=e1(b(ba=2),3)
v16=e1(e1a=3,b=b(ba=2))
v17=e1(b=b(ba=2),e1a=3)
v18=e1(b(ba=2),e1a=3)
call chk2(p11,v11)
call chk2(p12,v12)
call chk2(p13,v13)
call chk2(p14,v14)
call chk2(p15,v15)
call chk2(p16,v16)
call chk2(p17,v17)
call chk2(p18,v18)
v07=e1(2,3)
call chk2(p07,v07)
v08=e1(e1a=3,ba=2)
call chk2(p08,v08)
v09=e1(ba=2,e1a=3)
call chk2(p09,v09)
v10=e1(  2,e1a=3)
call chk2(p10,v10)
end subroutine
subroutine chk(d1,d2)
type(e1)          ::d1,d2
if (d1%ba/=2)print *,1101
if (d1%e1a/=1)print *,1102
if (d2%ba/=2)print *,1201
if (d2%e1a/=1)print *,1202
end subroutine
subroutine chk2(d1,d2)
type(e1)          ::d1,d2
if (d1%ba/=2)print *,2101
if (d1%e1a/=3)print *,2102
if (d2%ba/=2)print *,2201
if (d2%e1a/=3)print *,2202
end subroutine
end
subroutine s1
use m1
type(e1),parameter::p01=e1(2)
type(e1),parameter::p02=e1(ba=2)
type(e1),parameter::p03=e1(bA=2)
type(e1),parameter::p04=e1(b(2))
type(e1),parameter::p05=e1(b=b(2))
type(e1),parameter::p06=e1(B=B(2))
type(e1)          ::v01,v02,v03,v04,v05,v06
v01=e1(2)
if (p01%ba/=2)print *,101
if (v01%ba/=2)print *,201
call chk(p01,v01)
v02=e1(ba=2)
if (p02%ba/=2)print *,102
if (v02%ba/=2)print *,202
call chk(p02,v02)
v03=e1(bA=2)
if (p03%ba/=2)print *,103
if (v03%ba/=2)print *,203
call chk(p03,v03)
v04=e1(b(2))
if (p04%ba/=2)print *,104
if (v04%ba/=2)print *,204
call chk(p04,v04)
v05=e1(b=b(2))
if (p05%ba/=2)print *,105
if (v05%ba/=2)print *,205
call chk(p05,v05)
v06=e1(B=B(2))
if (p06%ba/=2)print *,106
if (v06%ba/=2)print *,205
call chk(p06,v06)
end
use m1
call s1
call s2
print *,'pass'
end
