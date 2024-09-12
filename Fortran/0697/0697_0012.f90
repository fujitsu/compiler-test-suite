call d2
call d3
call d4
call d5
call d6
call d7
print *,'pass'
contains
subroutine  d2
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
if(sizeof(i1)/=sizeof(l1)) print *,'err1'
if(sizeof(i2)/=sizeof(l2)) print *,'err2'
if(sizeof(i4)/=sizeof(l4)) print *,'err3'
if(sizeof(i8)/=sizeof(l8)) print *,'err4'
if(sizeof(r)/=8) print *,'err5'
if(sizeof(d)/=16) print *,'err6'
if(sizeof(q)/=32) print *,'err7'
if(sizeof(c)/=16) print *,'err8'
if(sizeof(cd)/=32) print *,'err9'
if(sizeof(cq)/=64) print *,'err10'
end subroutine
subroutine  d3
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
if(sizeof(i1)/=sizeof(l1)) print *,'err1'
if(sizeof(i2)/=sizeof(l2)) print *,'err2'
if(sizeof(i4)/=sizeof(l4)) print *,'err3'
if(sizeof(i8)/=sizeof(l8)) print *,'err4'
if(sizeof(r)/=24) print *,'err5'
if(sizeof(d)/=48) print *,'err6'
if(sizeof(q)/=96) print *,'err7'
if(sizeof(c)/=48) print *,'err8'
if(sizeof(cd)/=96) print *,'err9'
if(sizeof(cq)/=192) print *,'err10'
end subroutine
subroutine  d4
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
if(sizeof(i1)/=sizeof(l1)) print *,'err1'
if(sizeof(i2)/=sizeof(l2)) print *,'err2'
if(sizeof(i4)/=sizeof(l4)) print *,'err3'
if(sizeof(i8)/=sizeof(l8)) print *,'err4'
if(sizeof(r)/=96) print *,'err5'
if(sizeof(d)/=192) print *,'err6'
if(sizeof(q)/=384) print *,'err7'
if(sizeof(c)/=192) print *,'err8'
if(sizeof(cd)/=384) print *,'err9'
if(sizeof(cq)/=768) print *,'err10'
end subroutine
subroutine  d5
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
if(sizeof(i1)/=sizeof(l1)) print *,'err1'
if(sizeof(i2)/=sizeof(l2)) print *,'err2'
if(sizeof(i4)/=sizeof(l4)) print *,'err3'
if(sizeof(i8)/=sizeof(l8)) print *,'err4'
if(sizeof(r)/=288) print *,'err5'
if(sizeof(d)/=576) print *,'err6'
if(sizeof(q)/=1152) print *,'err7'
if(sizeof(c)/=576) print *,'err8'
if(sizeof(cd)/=1152) print *,'err9'
if(sizeof(cq)/=2304) print *,'err10'
end subroutine

subroutine  d6
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
if(sizeof(i1)/=sizeof(l1)) print *,'err1'
if(sizeof(i2)/=sizeof(l2)) print *,'err2'
if(sizeof(i4)/=sizeof(l4)) print *,'err3'
if(sizeof(i8)/=sizeof(l8)) print *,'err4'
if(sizeof(r)/=576) print *,'err5'
if(sizeof(d)/=1152) print *,'err6'
if(sizeof(q)/=2304) print *,'err7'
if(sizeof(c)/=1152) print *,'err8'
if(sizeof(cd)/=2304) print *,'err9'
if(sizeof(cq)/=4608) print *,'err10'
end subroutine

subroutine  d7
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
if(sizeof(i1)/=sizeof(l1)) print *,'err1'
if(sizeof(i2)/=sizeof(l2)) print *,'err2'
if(sizeof(i4)/=sizeof(l4)) print *,'err3'
if(sizeof(i8)/=sizeof(l8)) print *,'err4'
if(sizeof(r)/=576) print *,'err5'
if(sizeof(d)/=1152) print *,'err6'
if(sizeof(q)/=2304) print *,'err7'
if(sizeof(c)/=1152) print *,'err8'
if(sizeof(cd)/=2304) print *,'err9'
if(sizeof(cq)/=4608) print *,'err10'
end subroutine

end
