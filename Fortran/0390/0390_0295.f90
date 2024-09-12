class(*),pointer,dimension(:)::a16
call s1(a16=a16)
call s2
print *,'pass'
contains
subroutine s1(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16)
integer(1),dimension(:),optional::a1
integer(2),dimension(:),optional::a2
integer(4),dimension(:),optional::a3
integer(8),dimension(:),optional::a4
logical(1),dimension(:),optional::a5
logical(2),dimension(:),optional::a6
logical(4),dimension(:),optional::a7
logical(8),dimension(:),optional::a8
real(4),dimension(:),optional::a9
real(8),dimension(:),optional::a10
real(16),dimension(:),optional::a11
complex(4),dimension(:),optional::a12
complex(8),dimension(:),optional::a13
complex(16),dimension(:),optional::a14
character,dimension(:),optional::a15
class(*),pointer,dimension(:),optional::a16
allocate(a16,source=[0])
if(storage_size(a1)/=8) print *,'err'
if(storage_size(a2)/=16) print *,'err'
if(storage_size(a3)/=32) print *,'err'
if(storage_size(a4)/=64) print *,'err'
if(storage_size(a5)/=8) print *,'err'
if(storage_size(a6)/=16) print *,'err'
if(storage_size(a7)/=32) print *,'err'
if(storage_size(a8)/=64) print *,'err'
if(storage_size(a9)/=32) print *,'err'
if(storage_size(a10)/=64) print *,'err'
if(storage_size(a11)/=128) print *,'err'
if(storage_size(a12)/=64) print *,'err'
if(storage_size(a13)/=128) print *,'err'
if(storage_size(a14)/=256) print *,'err'
if(storage_size(a15)/=8) print *,'err'
if(storage_size(a16)/=32) print *,'err'
end subroutine
subroutine s2
integer(1)::i1(0)
integer(2)::i2(0)
integer(4)::i4(0)
integer(8)::i8(0)
real(4)::r(0)
real(8)::d(0)
real(16)::q(0)
complex(4)::c(0)
complex(8)::cd(0)
complex(16)::cq(0)
logical(1)::l1(0)
logical(2)::l2(0)
logical(4)::l4(0)
logical(8)::l8(0)
character::ch(0)
class(*),pointer::cl(:)
allocate(cl,source=[0])

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
if(storage_size(ch)/=8) print *,'err15'
if(storage_size(cl)/=32) print *,'err16'
end subroutine

end
