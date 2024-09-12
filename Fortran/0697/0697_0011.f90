module mod
integer(1)::i1(10)
integer(2)::i2(10)
integer(4)::i4(10)
integer(8)::i8(10)
real(4)::r(10)
real(8)::d(10)
real(16)::q(10)
complex(4)::c(10)
complex(8)::cd(10)
complex(16)::cq(10)
logical(1)::l1(10)
logical(2)::l2(10)
logical(4)::l4(10)
logical(8)::l8(10)
end module
use mod
if(sizeof(i1)/=10) print *,'err1'
if(sizeof(i2)/=20) print *,'err2'
if(sizeof(i4)/=40) print *,'err3'
if(sizeof(i8)/=80) print *,'err4'
if(sizeof(r)/=40) print *,'err5'
if(sizeof(d)/=80) print *,'err6'
if(sizeof(q)/=160) print *,'err7'
if(sizeof(c)/=80) print *,'err8'
if(sizeof(cd)/=160) print *,'err9'
if(sizeof(cq)/=320) print *,'err10'
if(sizeof(l1)/=10) print *,'err11'
if(sizeof(l2)/=20) print *,'err12'
if(sizeof(l4)/=40) print *,'err13'
if(sizeof(l8)/=80) print *,'err14'
print *,'pass'
end

