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
call s1
call s2
call s3
call s4
call s5
call s6
call s7
print *,'pass'
end
subroutine s1
use mod
if(storage_size(i1)/=8) print *,'err1'
if(storage_size(i2)/=16) print *,'err2'
if(storage_size(i4)/=32) print *,'err3'
if(storage_size(i8)/=64) print *,'err4'
if(storage_size(r)/=32) print *,'err5'
if(storage_size(d)/=64) print *,'err6'
if(storage_size(q)/=128) print *,'err7'
if(storage_size(c)/=64) print *,'err8'
if(storage_size(cd)/=128) print *,'err9'
if(storage_size(cq)/=256) print *,'err10'
if(storage_size(l1)/=8) print *,'err11'
if(storage_size(l2)/=16) print *,'err12'
if(storage_size(l4)/=32) print *,'err13'
if(storage_size(l8)/=64) print *,'err14'
end
subroutine  s2
integer(1)::i1(1,2)
integer(2)::i2(1,2)
integer(4)::i4(1,2)
integer(8)::i8(1,2)
real(4)::r(1,2)
real(8)::d(1,2)
real(16)::q(1,2)
complex(4)::c(1,2)
complex(8)::cd(1,2)
complex(16)::cq(1,2)
logical(1)::l1(1,2)
logical(2)::l2(1,2)
logical(4)::l4(1,2)
logical(8)::l8(1,2)
if(storage_size(i1)/=storage_size(l1)) print *,'err1'
if(storage_size(i2)/=storage_size(l2)) print *,'err2'
if(storage_size(i4)/=storage_size(l4)) print *,'err3'
if(storage_size(i8)/=storage_size(l8)) print *,'err4'
if(storage_size(r)/=32) print *,'err5'
if(storage_size(d)/=64) print *,'err6'
if(storage_size(q)/=128) print *,'err7'
if(storage_size(c)/=64) print *,'err8'
if(storage_size(cd)/=128) print *,'err9'
if(storage_size(cq)/=256) print *,'err10'
end

subroutine  s3
integer(1)::i1(1,2,3)
integer(2)::i2(1,2,3)
integer(4)::i4(1,2,3)
integer(8)::i8(1,2,3)
real(4)::r(1,2,3)
real(8)::d(1,2,3)
real(16)::q(1,2,3)
complex(4)::c(1,2,3)
complex(8)::cd(1,2,3)
complex(16)::cq(1,2,3)
logical(1)::l1(1,2,3)
logical(2)::l2(1,2,3)
logical(4)::l4(1,2,3)
logical(8)::l8(1,2,3)
if(storage_size(i1)/=storage_size(l1)) print *,'err1'
if(storage_size(i2)/=storage_size(l2)) print *,'err2'
if(storage_size(i4)/=storage_size(l4)) print *,'err3'
if(storage_size(i8)/=storage_size(l8)) print *,'err4'
if(storage_size(r)/=32) print *,'err5'
if(storage_size(d)/=64) print *,'err6'
if(storage_size(q)/=128) print *,'err7'
if(storage_size(c)/=64) print *,'err8'
if(storage_size(cd)/=128) print *,'err9'
if(storage_size(cq)/=256) print *,'err10'
end
subroutine  s4
integer(1)::i1(1,2,3,4)
integer(2)::i2(1,2,3,4)
integer(4)::i4(1,2,3,4)
integer(8)::i8(1,2,3,4)
real(4)::r(1,2,3,4)
real(8)::d(1,2,3,4)
real(16)::q(1,2,3,4)
complex(4)::c(1,2,3,4)
complex(8)::cd(1,2,3,4)
complex(16)::cq(1,2,3,4)
logical(1)::l1(1,2,3,4)
logical(2)::l2(1,2,3,4)
logical(4)::l4(1,2,3,4)
logical(8)::l8(1,2,3,4)
if(storage_size(i1)/=storage_size(l1)) print *,'err1'
if(storage_size(i2)/=storage_size(l2)) print *,'err2'
if(storage_size(i4)/=storage_size(l4)) print *,'err3'
if(storage_size(i8)/=storage_size(l8)) print *,'err4'
if(storage_size(r)/=32) print *,'err5'
if(storage_size(d)/=64) print *,'err6'
if(storage_size(q)/=128) print *,'err7'
if(storage_size(c)/=64) print *,'err8'
if(storage_size(cd)/=128) print *,'err9'
if(storage_size(cq)/=256) print *,'err10'
end
subroutine  s5
integer(1)::i1(1,2,3,4,3)
integer(2)::i2(1,2,3,4,3)
integer(4)::i4(1,2,3,4,3)
integer(8)::i8(1,2,3,4,3)
real(4)::r(1,2,3,4,3)
real(8)::d(1,2,3,4,3)
real(16)::q(1,2,3,4,3)
complex(4)::c(1,2,3,4,3)
complex(8)::cd(1,2,3,4,3)
complex(16)::cq(1,2,3,4,3)
logical(1)::l1(1,2,3,4,3)
logical(2)::l2(1,2,3,4,3)
logical(4)::l4(1,2,3,4,3)
logical(8)::l8(1,2,3,4,3)
if(storage_size(i1)/=storage_size(l1)) print *,'err1'
if(storage_size(i2)/=storage_size(l2)) print *,'err2'
if(storage_size(i4)/=storage_size(l4)) print *,'err3'
if(storage_size(i8)/=storage_size(l8)) print *,'err4'
if(storage_size(r)/=32) print *,'err5'
if(storage_size(d)/=64) print *,'err6'
if(storage_size(q)/=128) print *,'err7'
if(storage_size(c)/=64) print *,'err8'
if(storage_size(cd)/=128) print *,'err9'
if(storage_size(cq)/=256) print *,'err10'
end

subroutine  s6
integer(1)::i1(1,2,3,4,3,2)
integer(2)::i2(1,2,3,4,3,2)
integer(4)::i4(1,2,3,4,3,2)
integer(8)::i8(1,2,3,4,3,2)
real(4)::r(1,2,3,4,3,2)
real(8)::d(1,2,3,4,3,2)
real(16)::q(1,2,3,4,3,2)
complex(4)::c(1,2,3,4,3,2)
complex(8)::cd(1,2,3,4,3,2)
complex(16)::cq(1,2,3,4,3,2)
logical(1)::l1(1,2,3,4,3,2)
logical(2)::l2(1,2,3,4,3,2)
logical(4)::l4(1,2,3,4,3,2)
logical(8)::l8(1,2,3,4,3,2)
if(storage_size(i1)/=storage_size(l1)) print *,'err1'
if(storage_size(i2)/=storage_size(l2)) print *,'err2'
if(storage_size(i4)/=storage_size(l4)) print *,'err3'
if(storage_size(i8)/=storage_size(l8)) print *,'err4'
if(storage_size(r)/=32) print *,'err5'
if(storage_size(d)/=64) print *,'err6'
if(storage_size(q)/=128) print *,'err7'
if(storage_size(c)/=64) print *,'err8'
if(storage_size(cd)/=128) print *,'err9'
if(storage_size(cq)/=256) print *,'err10'
end

subroutine  s7
integer(1)::i1(1,2,3,4,3,2,1)
integer(2)::i2(1,2,3,4,3,2,1)
integer(4)::i4(1,2,3,4,3,2,1)
integer(8)::i8(1,2,3,4,3,2,1)
real(4)::r(1,2,3,4,3,2,1)
real(8)::d(1,2,3,4,3,2,1)
real(16)::q(1,2,3,4,3,2,1)
complex(4)::c(1,2,3,4,3,2,1)
complex(8)::cd(1,2,3,4,3,2,1)
complex(16)::cq(1,2,3,4,3,2,1)
logical(1)::l1(1,2,3,4,3,2,1)
logical(2)::l2(1,2,3,4,3,2,1)
logical(4)::l4(1,2,3,4,3,2,1)
logical(8)::l8(1,2,3,4,3,2,1)
if(storage_size(i1)/=storage_size(l1)) print *,'err1'
if(storage_size(i2)/=storage_size(l2)) print *,'err2'
if(storage_size(i4)/=storage_size(l4)) print *,'err3'
if(storage_size(i8)/=storage_size(l8)) print *,'err4'
if(storage_size(r)/=32) print *,'err5'
if(storage_size(d)/=64) print *,'err6'
if(storage_size(q)/=128) print *,'err7'
if(storage_size(c)/=64) print *,'err8'
if(storage_size(cd)/=128) print *,'err9'
if(storage_size(cq)/=256) print *,'err10'
end
