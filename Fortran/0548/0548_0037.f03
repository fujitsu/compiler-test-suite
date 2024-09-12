call s1
call s2
call s3
print *,'pass'
end
subroutine s1
if(merge_bits(13_1,18_1,22_1)/=or(iand(13_1,22_1), &
iand(18_1,not(22_1)))) print *,'err1'
if(merge_bits(13_2,18_2,22_2)/=or(iand(13_2,22_2), &
iand(18_2,not(22_2)))) print *,'err2'
if(merge_bits(13_4,18_4,22_4)/=or(iand(13_4,22_4), &
iand(18_4,not(22_4)))) print *,'err3'
if(merge_bits(13_8,18_8,22_8)/=or(iand(13_8,22_8), &
iand(18_8,not(22_2)))) print *,'err4'
if(kind(merge_bits(13_1,18_1,22_1))/=1) print *,'err5'
if(kind(merge_bits(13_2,18_2,22_2))/=2) print *,'err6'
if(kind(merge_bits(13_4,18_4,22_4))/=4) print *,'err7'
if(kind(merge_bits(13_8,18_8,22_8))/=8) print *,'err8'
end
subroutine s2
integer(1)::i1,i11,i111
integer(2)::i2,i22,i222
integer(4)::i4,i44,i444
integer(8)::i8,i88,i888
i1=13
i2=13
i4=13
i8=13
i11=18
i22=18
i44=18
i88=18
i111=22
i222=22
i444=22
i888=22
if(merge_bits(i1,i11,i111)/=4_1) print *,'err11'
if(merge_bits(i2,i22,i222)/=4_2) print *,'err12'
if(merge_bits(i4,i44,i444)/=4_4) print *,'err13'
if(merge_bits(i8,i88,i888)/=4_8) print *,'err14'
if(merge_bits(i=i1,j=i11,mask=i111)/=4_1) print *,'err15'
if(merge_bits(i=i2,j=i22,mask=i222)/=4_2) print *,'err16'
if(merge_bits(i=i4,j=i44,mask=i444)/=4_4) print *,'err17'
if(merge_bits(i=i8,j=i88,mask=i888)/=4_8) print *,'err18'
if(kind(merge_bits(i1,i11,i111))/=1) print *,'err19'
if(kind(merge_bits(i2,i22,i222))/=2) print *,'err20'
if(kind(merge_bits(i4,i44,i444))/=4) print *,'err21'
if(kind(merge_bits(i8,i88,i888))/=8) print *,'err22'
end
subroutine s3
integer(1)::i1(2),i11(2),i111(2)
integer(2)::i2(2),i22(2),i222(2)
integer(4)::i4(2),i44(2),i444(2)
integer(8)::i8(2),i88(2),i888(2)
i1=13
i2=13
i4=13
i8=13
i11=18
i22=18
i44=18
i88=18
i111=22
i222=22
i444=22
i888=22
if(any(merge_bits(i1,i11,i111)/= or(iand(i1,i111),&
iand(i11,not(i111))))) print *,'111'
if(any(merge_bits(i2,i22,i222)/= or(iand(i2,i222),&
iand(i22,not(i222))))) print *,'112'
if(any(merge_bits(i4,i44,i444)/= or(iand(i4,i444),&
iand(i44,not(i444))))) print *,'113'
if(any(merge_bits(i8,i88,i888)/= or(iand(i8,i888),&
iand(i88,not(i888))))) print *,'114'
end
