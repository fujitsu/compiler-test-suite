call s1
call s2
call s3
print *,'pass'
end
subroutine s1
if(trailz(0_1)/=bit_size(0_1)) print *,'err1'
if(trailz(0_2)/=bit_size(0_2)) print *,'err2'
if(trailz(0_4)/=bit_size(0_4)) print *,'err3'
if(trailz(0_8)/=bit_size(0_8)) print *,'err4'
end
subroutine s2
integer(1)::i1(6),i11(6)
integer(2)::i2(6),i22(6)
integer(4)::i4(6),i44(6)
integer(8)::i8(6),i88(6)
i1=[-5_1,-3_1,-1_1,1_1,3_1,5_1]
i2=[-5_2,-3_2,-1_2,1_2,3_2,5_2]
i4=[-5,-3,-1,1,3,5]
i8=[-5_8,-3_8,-1_8,1_8,3_8,5_8]
i11=[-6_1,-4_1,-2_1,2_1,4_1,6_1]
i22=[-6_2,-4_2,-2_2,2_2,4_2,6_2]
i44=[-6,-4,-2,2,4,6]
i88=[-6_8,-4_8,-2_8,2_8,4_8,6_8]
if(any(trailz(i1)/=[0_1,0_1,0_1,0_1,0_1,0_1])) print *,'err'
if(any(trailz(i2)/=[0_2,0_2,0_2,0_2,0_2,0_2])) print *,'err'
if(any(trailz(i4)/=[0_4,0_4,0_4,0_4,0_4,0_4])) print *,'err'
if(any(trailz(i8)/=[0_8,0_8,0_8,0_8,0_8,0_8])) print *,'err'
if(any(trailz(i11)/=[1_1,2_1,1_1,1_1,2_1,1_1])) print *,'err'
if(any(trailz(i22)/=[1_2,2_2,1_2,1_2,2_2,1_2])) print *,'err'
if(any(trailz(i44)/=[1_4,2_4,1_4,1_4,2_4,1_4])) print *,'err'
if(any(trailz(i88)/=[1_8,2_8,1_8,1_8,2_8,1_8])) print *,'err'
end
subroutine s3
if(kind(trailz(i=0_1))/=4) print *,'err1'
if(kind(trailz(i=0_2))/=4) print *,'err2'
if(kind(trailz(i=0_4))/=4) print *,'err3'
if(kind(trailz(i=0_8))/=4) print *,'err4'
end
