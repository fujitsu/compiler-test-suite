module m1
type b
  integer::ba
  integer::bb=3
end type
type ,extends(b):: e1
  integer::e1a=1
  integer::e1b=4
end type
type ,extends(e1):: e2
  integer::e2a=5
  integer::e2b=6
end type
contains
subroutine s2
type(e2),parameter::p07=e2(2,3,3,e2b=16,e2a=15)
type(e2),parameter::p08=e2(e2b=16,e2a=15,e1a=3,ba=2)
type(e2),parameter::p09=e2(ba=2,e1a=3,e2b=16,e2a=15)
type(e2),parameter::p10=e2(   2,e1a=3,e2b=16,e2a=15)
type(e2),parameter::p11=e2(b(2),3,e2b=16,e2a=15)
type(e2),parameter::p12=e2(e1a=3,b=b(2),e2b=16,e2a=15)
type(e2),parameter::p13=e2(b=b(2),e2b=16,e2a=15,e1a=3)
type(e2),parameter::p14=e2(b(ba=2),e2b=16,e2a=15,e1a=3)
type(e2),parameter::p15=e2(b(ba=2),3,e2b=16,e2a=15)
type(e2),parameter::p16=e2(e1a=3,e2b=16,e2a=15,b=b(ba=2))
type(e2),parameter::p17=e2(b=b(ba=2),e1a=3,e2b=16,e2a=15)
type(e2),parameter::p18=e2(b(ba=2),e1a=3,e2b=16,e2a=15)
type(e2)          ::v07,v08,v09,v10,v11,v12,v13,v14,v15,v16,v17,v18
v11=e2(b(2),3)
v12=e2(e1a=3,b=b(2))
v13=e2(b=b(2),e1a=3)
v14=e2(b(ba=2),e1a=3)
v15=e2(b(ba=2),3)
v16=e2(e1a=3,b=b(ba=2))
v17=e2(b=b(ba=2),e1a=3)
v18=e2(b(ba=2),e1a=3)
call chk2(p11,v11)
call chk2(p12,v12)
call chk2(p13,v13)
call chk2(p14,v14)
call chk2(p15,v15)
call chk2(p16,v16)
call chk2(p17,v17)
call chk2(p18,v18)
v07=e2(2,3,3)
call chk2(p07,v07)
v08=e2(e1a=3,ba=2)
call chk2(p08,v08)
v09=e2(ba=2,e1a=3)
call chk2(p09,v09)
v10=e2(  2,e1a=3)
call chk2(p10,v10)
end subroutine
subroutine chk(d1,d2)
type(e2)          ::d1,d2
if (d1%ba/=2)print *,1101
if (d1%e1a/=1)print *,1102
if (d1%e1%e1a/=1)print *,1102
if (d1%bb/=3)print *,1103
if (d1%b%bb/=3)print *,1103
if (d1%e1b/=4)print *,1104
if (d1%e2a/=15)print *,1105
if (d1%e2b/=16)print *,1106
if (d2%ba/=2)print *,1201
if (d2%e1a/=1)print *,1202
if (d2%ba/=2)print *,1201
if (d2%e1a/=1)print *,1202
if (d2%e1%e1a/=1)print *,1202
if (d2%bb/=3)print *,1203
if (d2%b%bb/=3)print *,1203
if (d2%e1b/=4)print *,1204
if (d2%e2a/=5)print *,1205
if (d2%e2b/=6)print *,1206
end subroutine
subroutine chk2(d1,d2)
type(e2)          ::d1,d2
if (d1%ba/=2)print *,2101
if (d1%bb/=3)print *,2103
if (d1%e1a/=3)print *,2104
if (d1%e1b/=4)print *,2105
if (d1%e2a/=15)print *,2106
if (d1%e2b/=16)print *,2107
if (d2%ba/=2)print *,2201
if (d2%bb/=3)print *,2103
if (d2%e1a/=3)print *,2104
if (d2%e1b/=4)print *,2105
if (d2%e2a/=5)print *,2106
if (d2%e2b/=6)print *,2107
end subroutine
end
subroutine s1
use m1
type(e2),parameter::p01=e2(2,e2b=16,e2a=15)
type(e2),parameter::p02=e2(ba=2,e2b=16,e2a=15)
type(e2),parameter::p03=e2(e2b=16,e2a=15,bA=2)
type(e2),parameter::p04=e2(b(2),e2b=16,e2a=15)
type(e2),parameter::p05=e2(e2b=16,e2a=15,b=b(2))
type(e2),parameter::p06=e2(B=B(2),e2b=16,e2a=15)
type(e2)          ::v01,v02,v03,v04,v05,v06
v01=e2(2)
if (p01%ba/=2)print *,101
if (v01%ba/=2)print *,201
call chk(p01,v01)
v02=e2(ba=2)
if (p02%ba/=2)print *,102
if (v02%ba/=2)print *,202
call chk(p02,v02)
v03=e2(bA=2)
if (p03%ba/=2)print *,103
if (v03%ba/=2)print *,203
call chk(p03,v03)
v04=e2(b(2))
if (p04%ba/=2)print *,104
if (v04%ba/=2)print *,204
call chk(p04,v04)
v05=e2(b=b(2))
if (p05%ba/=2)print *,105
if (v05%ba/=2)print *,205
call chk(p05,v05)
v06=e2(B=B(2))
if (p06%ba/=2)print *,106
if (v06%ba/=2)print *,205
call chk(p06,v06)
end
use m1
call s1
call s2
print *,'pass'
end
