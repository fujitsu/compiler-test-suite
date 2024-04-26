call s1
call s2
call s3
print *,'pass'
end
subroutine s1
use iso_c_binding
if(c_sizeof(1_1)/=1) call err(1)
if(c_sizeof(1_2)/=2) call err(2)
if(c_sizeof(1_4)/=4) call err(3)
if(c_sizeof(1_8)/=8) call err(4)
if(c_sizeof(1.0_4)/=4) call err(5)
if(c_sizeof(1.0_8)/=8) call err(6)
if(c_sizeof(.true._1)/=1) call err(8)
if(c_sizeof((1.0_4,1.0_4))/=8) call err(9)
if(c_sizeof((1.0_8,1.0_8))/=16) call err(10)
if(c_sizeof(1_"")/=0) call err(12)
if(c_sizeof(1_"1")/=1) call err(13)
if(c_sizeof(1_"1"(1:0))/=0) call err(14)
if(c_sizeof(1_"1"(1:1))/=1) call err(15)
end
subroutine s2
use iso_c_binding
if(c_sizeof([1_1])/=1) call err(101)
if(c_sizeof([1_2])/=2) call err(102)
if(c_sizeof([1_4])/=4) call err(103)
if(c_sizeof([1_8])/=8) call err(104)
if(c_sizeof([1.0_4])/=4) call err(105)
if(c_sizeof([1.0_8])/=8) call err(106)
if(c_sizeof([.true._1])/=1) call err(108)
if(c_sizeof([(1.0_4,1.0_4)])/=8) call err(109)
if(c_sizeof([(1.0_8,1.0_8)])/=16) call err(110)
if(c_sizeof([1_""])/=0) call err(112)
if(c_sizeof([1_"1"])/=1) call err(113)
if(c_sizeof([1_"1"(1:0)])/=0) call err(114)
if(c_sizeof([1_"1"(1:1)])/=1) call err(115)
end
subroutine s3
use iso_c_binding
integer,parameter::ii=2
integer(1),parameter::i1(1,ii)=1
integer(2),parameter::i2(1,ii)=1
integer(4),parameter::i4(1,ii)=1
integer(8),parameter::i8(1,ii)=1
real(4),parameter::r(1,ii)=1.0_4
real(8),parameter::d(1,ii)=1.0_8
complex(4),parameter::c(1,ii)=(1.0_4,1.0_4)
complex(8),parameter::cd(1,ii)=(1.0_8,1.0_8)
logical(1),parameter::l(1,ii)=.true.
character(2),parameter::ch(2)="12"
if(c_sizeof(i1)/=2) call err(200)
if(c_sizeof(i2)/=4) call err(201)
if(c_sizeof(i4)/=8) call err(202)
if(c_sizeof(i8)/=16) call err(203)
if(c_sizeof(r)/=8) call err(204)
if(c_sizeof(d)/=16) call err(205)
if(c_sizeof(c)/=16) call err(206)
if(c_sizeof(cd)/=32) call err(207)
if(c_sizeof(l)/=2) call err(208)
if(c_sizeof(ch)/=4) call err(209)

end
subroutine err(i)
integer::i
print *,'err',i
end
