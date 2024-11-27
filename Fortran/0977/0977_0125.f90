module m1
interface ybs
module procedure rbs,dbs,qbs
end interface
contains
function rbs(r1)
complex(4) r1
real(4) rbs
intent(in)::r1
rbs=abs(r1)
end function
function dbs(r1)
complex(8) r1
real   (8) dbs
intent(in)::r1
dbs=abs(r1)
end function
function qbs(r1)
complex(16) r1
real   (16) qbs
intent(in)::r1
qbs=abs(r1)
end function
end
use m1
if (abs(cmplx(z'3f800000',z'40000000')-(1,2))>0.001)write(6,*) "NG"
if (abs(cmplx(1.0,z'40000000')-(1,2))>0.001)write(6,*) "NG"
if (abs(cmplx(z'3f800000',2.0)-(1,2))>0.001)write(6,*) "NG"
if (abs(cmplx(z'3f800000'            )-(1,0))>0.001)write(6,*) "NG"
if (ybs(cmplx(z'3f800000',z'40000000')-(1,2))>0.001)write(6,*) "NG"
if (ybs(cmplx(1.0,z'40000000')-(1,2))>0.001)write(6,*) "NG"
if (ybs(cmplx(z'3f800000',2.0)-(1,2))>0.001)write(6,*) "NG"
if (ybs(cmplx(z'3f800000'            )-(1,0))>0.001)write(6,*) "NG"
if (ybs(cmplx(z'3f800000',z'40000000',kind=4)-(1,2))>0.001)write(6,*) "NG"
if (ybs(cmplx(1.0,z'40000000',kind=4)-(1,2))>0.001)write(6,*) "NG"
if (ybs(cmplx(z'3f800000',2.0,kind=4)-(1,2))>0.001)write(6,*) "NG"
if (ybs(cmplx(z'3f800000'            ,kind=4)-(1,0))>0.001)write(6,*) "NG"
if (ybs(cmplx(z'3ff0000000000000',z'4000000000000000',kind=8)-(1,2))>0.001)write(6,*) "NG"
if (ybs(cmplx(1.0,z'4000000000000000',kind=8)-(1,2))>0.001)write(6,*) "NG"
if (ybs(cmplx(z'3ff0000000000000',2.0,kind=8)-(1,2))>0.001)write(6,*) "NG"
if (ybs(cmplx(z'3ff0000000000000'            ,kind=8)-(1,0))>0.001)write(6,*) "NG"
print *,'pass'
end
