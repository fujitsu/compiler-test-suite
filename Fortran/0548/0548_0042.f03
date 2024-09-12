call s1
call s2
print *,'pass'
end
subroutine s1
if(merge_bits(13_1, 18_1, 22_1)/=4_1) print *,'err1'
if(merge_bits(13_2, 18_2, 22_2)/=4_2) print *,'err2'
if(merge_bits(13_4, 18_4, 22_4)/=4_4) print *,'err3'
if(merge_bits(13_8, 18_8, 22_8)/=4_8) print *,'err4'
if(merge_bits(i=13_1, j=18_1, mask=22_1)/=4_1) print *,'err5'
if(merge_bits(I=13_2, J=18_2, MASK=22_2)/=4_2) print *,'err6'
if(merge_bits(mask=22,j=18,i=13)/=4_4) print *,'err7'
if(merge_bits(13_8, 18_8, mask=22_8)/=4_8) print *,'err8'
if(any(merge_bits([13_1], 18_1, 22_1)/=[4_1])) print *,'err9'
if(any(merge_bits([13_2], 18_2, 22_2)/=[4_2])) print *,'err10'
if(any(merge_bits([13_4], 18_4, 22_4)/=[4_4])) print *,'err11'
if(any(merge_bits([13_8], 18_8, 22_8)/=[4_8])) print *,'err12'
if(any(merge_bits(13_1, [18_1], 22_1)/=[4_1])) print *,'err13'
if(any(merge_bits(13_2, [18_2], 22_2)/=[4_2])) print *,'err14'
if(any(merge_bits(13_4, [18_4], 22_4)/=[4_4])) print *,'err15'
if(any(merge_bits(13_8, [18_8], 22_8)/=[4_8])) print *,'err16'
if(any(merge_bits(13_1, 18_1, [22_1])/=[4_1])) print *,'err17'
if(any(merge_bits(13_2, 18_2, [22_2])/=[4_2])) print *,'err18'
if(any(merge_bits(13_4, 18_4, [22_4])/=[4_4])) print *,'err19'
if(any(merge_bits(13_8, 18_8, [22_8])/=[4_8])) print *,'err20'
if(any(merge_bits([13_1], [18_1], [22_1])/=[4_8])) print *,'err21'
if(any(merge_bits([13_2], [18_2], [22_2])/=[4_8])) print *,'err22'
if(any(merge_bits([13_4], [18_4], [22_4])/=[4_8])) print *,'err23'
if(any(merge_bits([13_8], [18_8], [22_8])/=[4_8])) print *,'err24'
end
subroutine s2
integer(1)::i1,i11,i111,ia1(2),ia11(2),ia111(2)
integer(2)::i2,i22,i222,ia2(2),ia22(2),ia222(2)
integer(4)::i4,i44,i444,ia4(2),ia44(2),ia444(2)
integer(8)::i8,i88,i888,ia8(2),ia88(2),ia888(2)

i1=13_1
i11=18_1
i111=22_1
i2=13_2
i22=18_2
i222=22_2
i4=13_4
i44=18_4
i444=22_4
i8=13_8
i88=18_8
i888=22_8

ia1=13_1
ia11=18_1
ia111=22_1
ia2=13_2
ia22=18_2
ia222=22_2
ia4=13_4
ia44=18_4
ia444=22_4
ia8=13_8
ia88=18_8
ia888=22_8

if(merge_bits(i1, i11, i111)/=4_1) print *,'err1'
if(merge_bits(i2, i22, i222)/=4_2) print *,'err2'
if(merge_bits(i4, i44, i444)/=4_4) print *,'err3'
if(merge_bits(i8, i88, i888)/=4_8) print *,'err4'
if(merge_bits(i=i1, j=i11, mask=i111)/=4_1) print *,'err5'
if(merge_bits(I=i2, J=i22, MASK=i222)/=4_2) print *,'err6'
if(merge_bits(mask=i444,j=i44,i=i4)/=4_4) print *,'err7'
if(merge_bits(i8, i88, mask=i888)/=4_8) print *,'err8'
if(any(merge_bits(ia1, i11, i111)/=[4_1,4_1])) print *,'err9'
if(any(merge_bits(ia2, i22, i222)/=[4_2,4_2])) print *,'err10'
if(any(merge_bits(ia4, i44, i444)/=[4_4,4_4])) print *,'err11'
if(any(merge_bits(ia8, i88, i888)/=[4_8,4_8])) print *,'err12'
if(any(merge_bits(i1, ia11, i111)/=[4_1,4_1])) print *,'err13'
if(any(merge_bits(i2, ia22, i222)/=[4_2,4_2])) print *,'err14'
if(any(merge_bits(i4, ia44, i444)/=[4_4,4_4])) print *,'err15'
if(any(merge_bits(i8, ia88, i888)/=[4_8,4_8])) print *,'err16'
if(any(merge_bits(i1, i11, ia111)/=[4_1,4_1])) print *,'err17'
if(any(merge_bits(i2, i22, ia222)/=[4_2,4_2])) print *,'err18'
if(any(merge_bits(i4, i44, ia444)/=[4_4,4_4])) print *,'err19'
if(any(merge_bits(i8, i88, ia888)/=[4_8,4_8])) print *,'err20'
if(any(merge_bits(ia1, ia11, ia111)/=[4_8,4_8])) print *,'err21'
if(any(merge_bits(ia2, ia22, ia222)/=[4_8,4_8])) print *,'err22'
if(any(merge_bits(ia4, ia44, ia444)/=[4_8,4_8])) print *,'err23'
if(any(merge_bits(ia8, ia88, ia888)/=[4_8,4_8])) print *,'err24'
end
