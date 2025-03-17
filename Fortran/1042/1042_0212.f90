module m1
integer:: m1a01
integer:: m1a02
type m1t
   integer:: m1a01
   integer:: m1a02
end type
contains 
 subroutine m1p(d)
 type (m1t)::d
 m1a01=000001
 m1a02=000002
   d%m1a01=000003
   d%m1a02=000004
 end subroutine
end
module m2
use m1
integer:: m2a01
integer:: m2a02
type m2t
   integer:: m2a01
   integer:: m2a02
end type
contains 
 subroutine m2p(d)
 type (m2t)::d
 m2a01=000011
 m2a02=000012
   d%m2a01=000013
   d%m2a02=000014
 end subroutine
end
module m3
use m1
use m2
integer:: m3a01
integer:: m3a02
type m3t
   integer:: m3a01
   integer:: m3a02
end type
contains 
 subroutine m3p(d)
 type (m3t)::d
 m3a01=000101
 m3a02=000102
   d%m3a01=000103
   d%m3a02=000104
 end subroutine
end
module m4
use m1
use m2
use m3
integer:: m4a01
integer:: m4a02
type m4t
   integer:: m4a01
   integer:: m4a02
end type
contains 
 subroutine m4p(d)
 type (m4t)::d
 m4a01=001001
 m4a02=001002
   d%m4a01=001003
   d%m4a02=001004
 end subroutine
end
module m5
use m1
use m2
use m3
use m4
integer:: m5a01
integer:: m5a02
type m5t
   integer:: m5a01
   integer:: m5a02
end type
contains 
 subroutine m5p(d)
 type (m5t)::d
 m5a01=010001
 m5a02=010002
   d%m5a01=010003
   d%m5a02=010004
 end subroutine
end
use m1
use m2
use m3
use m4
use m5
type(m1t)::m1v
type(m2t)::m2v
type(m3t)::m3v
type(m4t)::m4v
type(m5t)::m5v
call m1p(m1v)
call m2p(m2v)
call m3p(m3v)
call m4p(m4v)
call m5p(m5v)
if (m1a01/=1)write(6,*) "NG"
if (m1a02/=2)write(6,*) "NG"
if (m1v%m1a01/=3)write(6,*) "NG"
if (m1v%m1a02/=4)write(6,*) "NG"
if (m2a01/=11)write(6,*) "NG"
if (m2a02/=12)write(6,*) "NG"
if (m2v%m2a01/=13)write(6,*) "NG"
if (m2v%m2a02/=14)write(6,*) "NG"
if (m3a01/=101)write(6,*) "NG"
if (m3a02/=102)write(6,*) "NG"
if (m3v%m3a01/=103)write(6,*) "NG"
if (m3v%m3a02/=104)write(6,*) "NG"
if (m4a01/=1001)write(6,*) "NG"
if (m4a02/=1002)write(6,*) "NG"
if (m4v%m4a01/=1003)write(6,*) "NG"
if (m4v%m4a02/=1004)write(6,*) "NG"
if (m5a01/=10001)write(6,*) "NG"
if (m5a02/=10002)write(6,*) "NG"
if (m5v%m5a01/=10003)write(6,*) "NG"
if (m5v%m5a02/=10004)write(6,*) "NG"
print *,'pass'
end
