use iso_c_binding,only:c_sizeof
call s1(-1_1)
call s1(0_1)
call s2(-1_2)
call s2(0_2)
call s3(-1_4)
call s3(0_4)
call s4(-1_8)
call s4(0_8)
call sss1
call sss2
print *,'pass'
contains
subroutine s1(i)
integer(1)::i
integer(1)::a(i)
if(c_sizeof(a)/=0) call err(1)
end subroutine
subroutine s2(i)
integer(2)::i
integer(2)::a(i)
if(c_sizeof(a)/=0)  call err(2)
end subroutine
subroutine s3(i)
integer(4)::i
integer(4)::a(i)
if(c_sizeof(a)/=0)  call err(3)
end subroutine
subroutine s4(i)
integer(8)::i
integer(8)::a(i)
if(c_sizeof(a)/=0)  call err(4)
end subroutine
subroutine sss1
integer(1),parameter::i1=-5_1
integer(2),parameter::i2=-5_2
integer(4),parameter::i4=-5_4
integer(8),parameter::i8=-5_8
integer(1)::ii1(i1),ti1(-5)
integer(2)::ii2(i2),ti2(-5)
integer(4)::ii4(i4),ti4(-5)
integer(8)::ii8(i8),ti8(-5)
if(c_sizeof(ii1)/=0) call err(10)
if(c_sizeof(ii2)/=0) call err(11)
if(c_sizeof(ii4)/=0) call err(12)
if(c_sizeof(ii8)/=0) call err(13)
if(c_sizeof(ti1)/=0) call err(14)
if(c_sizeof(ti2)/=0) call err(15)
if(c_sizeof(ti4)/=0) call err(16)
if(c_sizeof(ti8)/=0) call err(17)
end subroutine
subroutine sss2
integer(1),parameter::i1=-1_1
integer(2),parameter::i2=-1_2
integer(4),parameter::i4=-1_4
integer(8),parameter::i8=-1_8
integer(1)::ii1(2,i1)
integer(2)::ii2(2,i2)
integer(4)::ii4(2,i4)
integer(8)::ii8(2,i8)
if(c_sizeof(ii1)/=0) call err(20)
if(c_sizeof(ii2)/=0) call err(21)
if(c_sizeof(ii4)/=0) call err(22)
if(c_sizeof(ii8)/=0) call err(23)
end subroutine

end
subroutine err(i)
integer,intent(in)::i
print *,'err',i
end
