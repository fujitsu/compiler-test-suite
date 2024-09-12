call s1
call s2
call s3
call s4
call s5
print *,'pass'
end
subroutine s1
integer(1)::i1,i11,is1
integer(2)::i2,i22,is2
integer(4)::i4,i44,is4
integer(8)::i8,i88,is8
i1=1;i2=1;i4=1;i8=1
i11=-1;i22=-1;i44=-1;i88=-1
is1=1;is2=1;is4=1;is8=1
if(dshiftr(i1,i11,is1)/=-1_1) print *,'err'
if(dshiftr(i2,i22,is2)/=-1_2) print *,'err'
if(dshiftr(i4,i44,is4)/=-1_4) print *,'err'
if(dshiftr(i8,i88,is8)/=-1_8) print *,'err'
if(dshiftr(1_1,-1_1,1_1)/=-1_1) print *,'err'
if(dshiftr(1_2,-1_2,1_2)/=-1_2) print *,'err'
if(dshiftr(1,-1,1)/=-1_4) print *,'err'
if(dshiftr(1_8,-1_8,1_8)/=-1_8) print *,'err'
end
subroutine s2
integer(1)::i1,i11,is1
integer(2)::i2,i22,is2
integer(4)::i4,i44,is4
integer(8)::i8,i88,is8
i1=1;i2=1;i4=1;i8=1
i11=-1;i22=-1;i44=-1;i88=-1
is1=1;is2=1;is4=1;is8=1
if(dshiftr(i1,i11,is1)/=ior(shiftl(i1,bit_size(i1)-is1),&
shiftr(i11, is1))) print *,'err'
if(dshiftr(i2,i22,is2)/=ior(shiftl(i2,bit_size(i2)-is2),&
shiftr(i22, is2))) print *,'err'
if(dshiftr(i4,i44,is4)/=ior(shiftl(i4,bit_size(i4)-is4),&
shiftr(i44, is4))) print *,'err'
if(dshiftr(i8,i88,is8)/=ior(shiftl(i8,bit_size(i8)-is8),&
shiftr(i88, is8))) print *,'err'
end
subroutine s3
integer(1)::i1,i11,is1
integer(2)::i2,i22,is2
integer(4)::i4,i44,is4
integer(8)::i8,i88,is8
i1=2;i2=2;i4=2;i8=2
i11=2;i22=2;i44=2;i88=2
is1=3;is2=3;is4=3;is8=3
if(dshiftr(i1,i11,is1)/=ishftc(i1,-is1)) print *,'err'
if(dshiftr(i2,i22,is2)/=ishftc(i2,-is2)) print *,'err'
if(dshiftr(i4,i44,is4)/=ishftc(i4,-is4)) print *,'err'
if(dshiftr(i8,i88,is8)/=ishftc(i8,-is8)) print *,'err'
end
subroutine s4
integer(1)::i1,i11,is1
integer(2)::i2,i22,is2
integer(4)::i4,i44,is4
integer(8)::i8,i88,is8
i1=1;i2=1;i4=1;i8=1
i11=-1;i22=-1;i44=-1;i88=-1
is1=1;is2=1;is4=1;is8=1
if(dshiftr(i=i1,j=i11,shift=is1)/=-1_1) print *,'err'
if(dshiftr(i=i2,j=i22,shift=is2)/=-1_2) print *,'err'
if(dshiftr(i=i4,j=i44,shift=is4)/=-1_4) print *,'err'
if(dshiftr(i=i8,j=i88,shift=is8)/=-1_8) print *,'err'
if(dshiftr(i=1_1,j=-1_1,shift=1_1)/=-1_1) print *,'err'
if(dshiftr(i=1_2,j=-1_2,shift=1_2)/=-1_2) print *,'err'
if(dshiftr(i=1,j=-1,shift=1)/=-1_4) print *,'err'
if(dshiftr(i=1_8,j=-1_8,shift=1_8)/=-1_8) print *,'err'
end
subroutine s5
integer(1)::i1(2),i11,is1
integer(2)::i2(2),i22,is2
integer(4)::i4(2),i44,is4
integer(8)::i8(2),i88,is8
i1=2;i2=2;i4=2;i8=2
i11=2;i22=2;i44=2;i88=2
is1=3;is2=3;is4=3;is8=3
if(any(dshiftr(i1,i11,is1)/=ishftc(i1,-is1))) print *,'err'
if(any(dshiftr(i2,i22,is2)/=ishftc(i2,-is2))) print *,'err'
if(any(dshiftr(i4,i44,is4)/=ishftc(i4,-is4))) print *,'err'
if(any(dshiftr(i8,i88,is8)/=ishftc(i8,-is8))) print *,'err'
end
