call s1
call s2
call s3
print *,'pass'
end
subroutine s1
integer(1)::i1,i11,i111
integer(2)::i2,i22,i222
integer(4)::i4,i44,i444
integer(8)::i8,i88,i888
i1=1;i2=1;i4=1;i8=1
i11=2;i22=2;i44=2;i88=2
i111=3;i222=3;i444=3;i888=3
if(dshiftl(i1,i11,i111)/=8_1) print *,'err'
if(dshiftl(i2,i22,i222)/=8_2) print *,'err'
if(dshiftl(i4,i44,i444)/=8_4) print *,'err'
if(dshiftl(i8,i88,i888)/=8_8) print *,'err'
if(dshiftl(b'1',i11,i111)/=8_1) print *,'err'
if(dshiftl(b'1',i22,i222)/=8_2) print *,'err'
if(dshiftl(b'1',i44,i444)/=8_4) print *,'err'
if(dshiftl(b'1',i88,i888)/=8_8) print *,'err'
if(dshiftl(o'1',i11,i111)/=8_1) print *,'err'
if(dshiftl(o'1',i22,i222)/=8_2) print *,'err'
if(dshiftl(o'1',i44,i444)/=8_4) print *,'err'
if(dshiftl(o'1',i88,i888)/=8_8) print *,'err'
if(dshiftl(z'1',i11,i111)/=8_1) print *,'err'
if(dshiftl(z'1',i22,i222)/=8_2) print *,'err'
if(dshiftl(z'1',i44,i444)/=8_4) print *,'err'
if(dshiftl(z'1',i88,i888)/=8_8) print *,'err'
if(dshiftl(i1,b'10',i111)/=8_1) print *,'err'
if(dshiftl(i2,b'10',i222)/=8_2) print *,'err'
if(dshiftl(i4,b'10',i444)/=8_4) print *,'err'
if(dshiftl(i8,b'10',i888)/=8_8) print *,'err'
if(dshiftl(i1,o'2',i111)/=8_1) print *,'err'
if(dshiftl(i2,o'2',i222)/=8_2) print *,'err'
if(dshiftl(i4,o'2',i444)/=8_4) print *,'err'
if(dshiftl(i8,o'2',i888)/=8_8) print *,'err'
if(dshiftl(i1,z'2',i111)/=8_1) print *,'err'
if(dshiftl(i2,z'2',i222)/=8_2) print *,'err'
if(dshiftl(i4,z'2',i444)/=8_4) print *,'err'
if(dshiftl(i8,z'2',i888)/=8_8) print *,'err'
end
subroutine s2
integer(1)::i1,i11,i111(2)
integer(2)::i2,i22,i222(2)
integer(4)::i4,i44,i444(2)
integer(8)::i8,i88,i888(2)
i1=1;i2=1;i4=1;i8=1
i11=2;i22=2;i44=2;i88=2
i111=3;i222=3;i444=3;i888=3
if(any(dshiftl(i1,i11,i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(i2,i22,i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(i4,i44,i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(i8,i88,i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(b'1',i11,i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(b'1',i22,i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(b'1',i44,i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(b'1',i88,i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(o'1',i11,i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(o'1',i22,i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(o'1',i44,i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(o'1',i88,i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(z'1',i11,i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(z'1',i22,i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(z'1',i44,i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(z'1',i88,i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(i1,b'10',i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(i2,b'10',i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(i4,b'10',i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(i8,b'10',i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(i1,o'2',i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(i2,o'2',i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(i4,o'2',i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(i8,o'2',i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(i1,z'2',i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(i2,z'2',i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(i4,z'2',i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(i8,z'2',i888)/=[8_8,8_8])) print *,'err'
end
subroutine s3
integer(1)::i1(2),i11(2),i111
integer(2)::i2(2),i22(2),i222
integer(4)::i4(2),i44(2),i444
integer(8)::i8(2),i88(2),i888
i1=1;i2=1;i4=1;i8=1
i11=2;i22=2;i44=2;i88=2
i111=3;i222=3;i444=3;i888=3
if(any(dshiftl(i1,i11,i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(i2,i22,i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(i4,i44,i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(i8,i88,i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(b'1',i11,i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(b'1',i22,i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(b'1',i44,i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(b'1',i88,i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(o'1',i11,i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(o'1',i22,i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(o'1',i44,i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(o'1',i88,i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(z'1',i11,i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(z'1',i22,i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(z'1',i44,i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(z'1',i88,i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(i1,b'10',i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(i2,b'10',i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(i4,b'10',i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(i8,b'10',i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(i1,o'2',i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(i2,o'2',i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(i4,o'2',i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(i8,o'2',i888)/=[8_8,8_8])) print *,'err'
if(any(dshiftl(i1,z'2',i111)/=[8_1,8_1])) print *,'err'
if(any(dshiftl(i2,z'2',i222)/=[8_2,8_2])) print *,'err'
if(any(dshiftl(i4,z'2',i444)/=[8_4,8_4])) print *,'err'
if(any(dshiftl(i8,z'2',i888)/=[8_8,8_8])) print *,'err'
end
