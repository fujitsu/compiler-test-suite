call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
if(dshiftl(1_1,huge(1_1),2)/=5_1) print *,'err1'
if(dshiftl(1_2,huge(1_2),2)/=5_2) print *,'err2'
if(dshiftl(1_4,huge(1_4),2)/=5_4) print *,'err3'
if(dshiftl(1_8,huge(1_8),2)/=5_8) print *,'err4'
if(dshiftl(i=1_1,j=huge(1_1),shift=2)/=5_1) print *,'err5'
if(dshiftl(i=1_2,j=huge(1_2),shift=2)/=5_2) print *,'err6'
if(dshiftl(i=1_4,j=huge(1_4),shift=2)/=5_4) print *,'err7'
if(dshiftl(i=1_8,j=huge(1_8),shift=2)/=5_8) print *,'err8'
if(dshiftl(b'1',huge(1_1),2)/=5_1) print *,'err1'
if(dshiftl(b'1',huge(1_2),2)/=5_2) print *,'err2'
if(dshiftl(b'1',huge(1_4),2)/=5_4) print *,'err3'
if(dshiftl(b'1',huge(1_8),2)/=5_8) print *,'err4'
end
subroutine s2
integer(1)::i1,i11,is1
integer(2)::i2,i22,is2
integer(4)::i4,i44,is4
integer(8)::i8,i88,is8
i1=1;i2=1;i4=1;i8=1
i11=-1;i22=-1;i44=-1;i88=-1
is1=1;is2=1;is4=1;is8=1
if(dshiftl(i1,i11,is1)/=ior(shiftl(i1,is1),&
shiftr(i11, bit_size(i1)-is1))) print *,'err'
if(dshiftl(i2,i22,is2)/=ior(shiftl(i2,is2),&
shiftr(i22, bit_size(i2)-is2))) print *,'err'
if(dshiftl(i4,i44,is4)/=ior(shiftl(i4,is4),&
shiftr(i44, bit_size(i4)-is4))) print *,'err'
if(dshiftl(i8,i88,is8)/=ior(shiftl(i8,is8),&
shiftr(i88, bit_size(i8)-is8))) print *,'err'
end
subroutine s3
integer(1)::i1,i11,is1
integer(2)::i2,i22,is2
integer(4)::i4,i44,is4
integer(8)::i8,i88,is8
i1=2;i2=2;i4=2;i8=2
i11=2;i22=2;i44=2;i88=2
is1=3;is2=3;is4=3;is8=3
if(dshiftl(i1,i11,is1)/=ishftc(i1,is1)) print *,'err'
if(dshiftl(i2,i22,is2)/=ishftc(i2,is2)) print *,'err'
if(dshiftl(i4,i44,is4)/=ishftc(i4,is4)) print *,'err'
if(dshiftl(i8,i88,is8)/=ishftc(i8,is8)) print *,'err'
end
subroutine s4
integer(1)::i1(2),i11,is1
integer(2)::i2(2),i22,is2
integer(4)::i4(2),i44,is4
integer(8)::i8(2),i88,is8
i1=2;i2=2;i4=2;i8=2
i11=2;i22=2;i44=2;i88=2
is1=3;is2=3;is4=3;is8=3
if(any(dshiftl(i1,i11,is1)/=ishftc(i1,is1))) print *,'err'
if(any(dshiftl(i2,i22,is2)/=ishftc(i2,is2))) print *,'err'
if(any(dshiftl(i4,i44,is4)/=ishftc(i4,is4))) print *,'err'
if(any(dshiftl(i8,i88,is8)/=ishftc(i8,is8))) print *,'err'
end