call s1
call s2
call s3
print *,'pass'
end
subroutine s1
integer(1)::i1,i
i1=8
do i=1,huge(i1)
if(dshiftl(i,i-1_1,i1)/=ior(shiftl(i,i1), shiftr (i-1_1, bit_size(i)-i1))) print *,'err'
if(dshiftl(i,i,i1)/=ishftc(i,i1)) print *,'err'
if(dshiftr(i,i-1_1,i1)/=ior(shiftl(i,bit_size(i)-i1), shiftr (i, i1))) print *,'err'
if(dshiftr(i,i,i1)/=ishftc(i,-i1)) print *,'err'
if(merge_bits(i,i-1_1,i1)/=ior(iand(i,i1),iand(i-1_1,not(i1)))) print *,'err'
end do
end
subroutine s2
integer(2)::i2,i
i2=16
do i=1,i2
if(dshiftl(i,i-1_2,i2)/=ior(shiftl(i,i2), shiftr (i-1_2, bit_size(i)-i2))) print *,'err'
if(dshiftl(i,i,i2)/=ishftc(i,i2)) print *,'err'
if(dshiftr(i,i-1_1,i2)/=ior(shiftl(i,bit_size(i)-i2), shiftr (i, i2))) print *,'err'
if(dshiftr(i,i,i2)/=ishftc(i,-i2)) print *,'err'
if(merge_bits(i,i-1_1,i2)/=ior(iand(i,i2),iand(i-1_1,not(i2)))) print *,'err'
end do
end
subroutine s3
integer(4)::i4,i
i4=32
do i=1,i4
if(dshiftl(i,i-1,i4)/=ior(shiftl(i,i4), shiftr (i-1_4, bit_size(i)-i4))) print *,'err'
if(dshiftl(i,i,i4)/=ishftc(i,i4)) print *,'err'
if(dshiftr(i,i-1_1,i4)/=ior(shiftl(i,bit_size(i)-i4), shiftr (i, i4))) print *,'err'
if(dshiftr(i,i,i4)/=ishftc(i,-i4)) print *,'err'
if(merge_bits(i,i-1_1,i4)/=ior(iand(i,i4),iand(i-1_1,not(i4)))) print *,'err'
end do
end
