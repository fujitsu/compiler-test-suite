call s1
call s2
call s3
print *,'pass'
end
subroutine s1
integer(1)::i1,i11
integer(2)::i2,i22
integer(4)::i4,i44
integer(8)::i8,i88
i1=3;i2=3;i4=3;i8=3
i11=2;i22=2;i44=2;i88=2
if(dshiftr(i1,i11,bit_size(1_1))/=3_1) print *,'err1'
if(dshiftr(i2,i22,bit_size(1_2))/=3_2) print *,'err'
if(dshiftr(i4,i44,bit_size(1_4))/=3_4) print *,'err'
if(dshiftr(i8,i88,bit_size(1_8))/=3_8) print *,'err'
if(dshiftr(b'11',i11,bit_size(1_1))/=3_1) print *,'err'
if(dshiftr(b'11',i22,bit_size(1_2))/=3_2) print *,'err'
if(dshiftr(b'11',i44,bit_size(1_4))/=3_4) print *,'err'
if(dshiftr(b'11',i88,bit_size(1_8))/=3_8) print *,'err'
if(dshiftr(o'3',i11,bit_size(1_1))/=3_1) print *,'err'
if(dshiftr(o'3',i22,bit_size(1_2))/=3_2) print *,'err'
if(dshiftr(o'3',i44,bit_size(1_4))/=3_4) print *,'err'
if(dshiftr(o'3',i88,bit_size(1_8))/=3_8) print *,'err'
if(dshiftr(z'3',i11,bit_size(1_1))/=3_1) print *,'err'
if(dshiftr(z'3',i22,bit_size(1_2))/=3_2) print *,'err'
if(dshiftr(z'3',i44,bit_size(1_4))/=3_4) print *,'err'
if(dshiftr(z'3',i88,bit_size(1_8))/=3_8) print *,'err'
if(dshiftr(i1,b'10',bit_size(1_1))/=3_1) print *,'err'
if(dshiftr(i2,b'10',bit_size(1_2))/=3_2) print *,'err'
if(dshiftr(i4,b'10',bit_size(1_4))/=3_4) print *,'err'
if(dshiftr(i8,b'10',bit_size(1_8))/=3_8) print *,'err'
if(dshiftr(i1,o'2',bit_size(1_1))/=3_1) print *,'err'
if(dshiftr(i2,o'2',bit_size(1_2))/=3_2) print *,'err'
if(dshiftr(i4,o'2',bit_size(1_4))/=3_4) print *,'err'
if(dshiftr(i8,o'2',bit_size(1_8))/=3_8) print *,'err'
if(dshiftr(i1,z'2',bit_size(1_1))/=3_1) print *,'err'
if(dshiftr(i2,z'2',bit_size(1_2))/=3_2) print *,'err'
if(dshiftr(i4,z'2',bit_size(1_4))/=3_4) print *,'err'
if(dshiftr(i8,z'2',bit_size(1_8))/=3_8) print *,'err'
end
subroutine s2
integer(1)::i1,i11,i111(2)
integer(2)::i2,i22,i222(2)
integer(4)::i4,i44,i444(2)
integer(8)::i8,i88,i888(2)
i1=3;i2=3;i4=3;i8=3
i11=2;i22=2;i44=2;i88=2
i111=bit_size(1_1);i222=bit_size(1_2);i444=bit_size(1_4);i888=bit_size(1_8)

if(any(dshiftr(i1,i11,i111)/=[3_1,3_1])) print *,'err31'
if(any(dshiftr(i2,i22,i222)/=[3_2,3_2])) print *,'err32'
if(any(dshiftr(i4,i44,i444)/=[3_4,3_4])) print *,'err33'
if(any(dshiftr(i8,i88,i888)/=[3_8,3_8])) print *,'err34'
if(any(dshiftr(b'11',i11,i111)/=[3_1,3_1])) print *,'err35'
if(any(dshiftr(b'11',i22,i222)/=[3_2,3_2])) print *,'err'
if(any(dshiftr(b'11',i44,i444)/=[3_4,3_4])) print *,'err'
if(any(dshiftr(b'11',i88,i888)/=[3_8,3_8])) print *,'err'
if(any(dshiftr(o'3',i11,i111)/=[3_1,3_1])) print *,'err'
if(any(dshiftr(o'3',i22,i222)/=[3_2,3_2])) print *,'err'
if(any(dshiftr(o'3',i44,i444)/=[3_4,3_4])) print *,'err'
if(any(dshiftr(o'3',i88,i888)/=[3_8,3_8])) print *,'err'
if(any(dshiftr(z'3',i11,i111)/=[3_1,3_1])) print *,'err'
if(any(dshiftr(z'3',i22,i222)/=[3_2,3_2])) print *,'err'
if(any(dshiftr(z'3',i44,i444)/=[3_4,3_4])) print *,'err'
if(any(dshiftr(z'3',i88,i888)/=[3_8,3_8])) print *,'err'
if(any(dshiftr(i1,b'10',i111)/=[3_1,3_1])) print *,'err'
if(any(dshiftr(i2,b'10',i222)/=[3_2,3_2])) print *,'err'
if(any(dshiftr(i4,b'10',i444)/=[3_4,3_4])) print *,'err'
if(any(dshiftr(i8,b'10',i888)/=[3_8,3_8])) print *,'err'
if(any(dshiftr(i1,o'2',i111)/=[3_1,3_1])) print *,'err'
if(any(dshiftr(i2,o'2',i222)/=[3_2,3_2])) print *,'err'
if(any(dshiftr(i4,o'2',i444)/=[3_4,3_4])) print *,'err'
if(any(dshiftr(i8,o'2',i888)/=[3_8,3_8])) print *,'err'
if(any(dshiftr(i1,z'2',i111)/=[3_1,3_1])) print *,'err'
if(any(dshiftr(i2,z'2',i222)/=[3_2,3_2])) print *,'err'
if(any(dshiftr(i4,z'2',i444)/=[3_4,3_4])) print *,'err'
if(any(dshiftr(i8,z'2',i888)/=[3_8,3_8])) print *,'err'
end
subroutine s3
integer(1)::i1(2),i11(2)
integer(2)::i2(2),i22(2)
integer(4)::i4(2),i44(2)
integer(8)::i8(2),i88(2)
i1=3;i2=3;i4=3;i8=3
i11=2;i22=2;i44=2;i88=2
if(any(dshiftr(i1,i11,bit_size(1_1))/=[3_1,3_1])) print *,'err51'
if(any(dshiftr(i2,i22,bit_size(1_2))/=[3_2,3_2])) print *,'err52'
if(any(dshiftr(i4,i44,bit_size(1_4))/=[3_4,3_4])) print *,'err53'
if(any(dshiftr(i8,i88,bit_size(1_8))/=[3_8,3_8])) print *,'err54'
if(any(dshiftr(b'11',i11,bit_size(1_1))/=[3_1,3_1])) print *,'err55'
if(any(dshiftr(b'11',i22,bit_size(1_2))/=[3_2,3_2])) print *,'err'
if(any(dshiftr(b'11',i44,bit_size(1_4))/=[3_4,3_4])) print *,'err'
if(any(dshiftr(b'11',i88,bit_size(1_8))/=[3_8,3_8])) print *,'err'
if(any(dshiftr(o'3',i11,bit_size(1_1))/=[3_1,3_1])) print *,'err'
if(any(dshiftr(o'3',i22,bit_size(1_2))/=[3_2,3_2])) print *,'err'
if(any(dshiftr(o'3',i44,bit_size(1_4))/=[3_4,3_4])) print *,'err'
if(any(dshiftr(o'3',i88,bit_size(1_8))/=[3_8,3_8])) print *,'err'
if(any(dshiftr(z'3',i11,bit_size(1_1))/=[3_1,3_1])) print *,'err'
if(any(dshiftr(z'3',i22,bit_size(1_2))/=[3_2,3_2])) print *,'err'
if(any(dshiftr(z'3',i44,bit_size(1_4))/=[3_4,3_4])) print *,'err'
if(any(dshiftr(z'3',i88,bit_size(1_8))/=[3_8,3_8])) print *,'err'
if(any(dshiftr(i1,b'10',bit_size(1_1))/=[3_1,3_1])) print *,'err'
if(any(dshiftr(i2,b'10',bit_size(1_2))/=[3_2,3_2])) print *,'err'
if(any(dshiftr(i4,b'10',bit_size(1_4))/=[3_4,3_4])) print *,'err'
if(any(dshiftr(i8,b'10',bit_size(1_8))/=[3_8,3_8])) print *,'err'
if(any(dshiftr(i1,o'2',bit_size(1_1))/=[3_1,3_1])) print *,'err'
if(any(dshiftr(i2,o'2',bit_size(1_2))/=[3_2,3_2])) print *,'err'
if(any(dshiftr(i4,o'2',bit_size(1_4))/=[3_4,3_4])) print *,'err'
if(any(dshiftr(i8,o'2',bit_size(1_8))/=[3_8,3_8])) print *,'err'
if(any(dshiftr(i1,z'2',bit_size(1_1))/=[3_1,3_1])) print *,'err'
if(any(dshiftr(i2,z'2',bit_size(1_2))/=[3_2,3_2])) print *,'err'
if(any(dshiftr(i4,z'2',bit_size(1_4))/=[3_4,3_4])) print *,'err'
if(any(dshiftr(i8,z'2',bit_size(1_8))/=[3_8,3_8])) print *,'err'
end
