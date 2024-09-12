call s1
call s2
print *,'pass'
end
subroutine s1
if(trailz(i=0_1)/=8 ) print *,'err'
if(trailz(i=0_2)/=16) print *,'err'
if(trailz(i=0_4)/=32) print *,'err'
if(trailz(i=0_8)/=64) print *,'err'
if(trailz(i=4_1)/=2) print *,'err'
if(trailz(i=4_2)/=2) print *,'err'
if(trailz(i=4_4)/=2) print *,'err'
if(trailz(i=4_8)/=2) print *,'err'
if(trailz(i=-1_1)/=0) print *,'err'
if(trailz(i=-1_2)/=0) print *,'err'
if(trailz(i=-1_4)/=0) print *,'err'
if(trailz(i=-1_8)/=0) print *,'err'
if(trailz(i=1_1)/=0) print *,'err'
if(trailz(i=1_2)/=0) print *,'err'
if(trailz(i=1_4)/=0) print *,'err'
if(trailz(i=1_8)/=0) print *,'err'
if(trailz(1_1)/=0) print *,'err'
if(trailz(2_1)/=1) print *,'err'
if(trailz(3_1)/=0) print *,'err'
if(trailz(4_1)/=2) print *,'err'
if(trailz(5_1)/=0) print *,'err'
if(trailz(6_1)/=1) print *,'err'
if(trailz(7_1)/=0) print *,'err'
if(trailz(8_1)/=3) print *,'err'
if(trailz(1_2)/=0) print *,'err'
if(trailz(2_2)/=1) print *,'err'
if(trailz(3_2)/=0) print *,'err'
if(trailz(4_2)/=2) print *,'err'
if(trailz(5_2)/=0) print *,'err'
if(trailz(6_2)/=1) print *,'err'
if(trailz(7_2)/=0) print *,'err'
if(trailz(8_2)/=3) print *,'err'
if(trailz(1_4)/=0) print *,'err'
if(trailz(2_4)/=1) print *,'err'
if(trailz(3_4)/=0) print *,'err'
if(trailz(4_4)/=2) print *,'err'
if(trailz(5_4)/=0) print *,'err'
if(trailz(6_4)/=1) print *,'err'
if(trailz(7_4)/=0) print *,'err'
if(trailz(8_4)/=3) print *,'err'
if(trailz(1_8)/=0) print *,'err'
if(trailz(2_8)/=1) print *,'err'
if(trailz(3_8)/=0) print *,'err'
if(trailz(4_8)/=2) print *,'err'
if(trailz(5_8)/=0) print *,'err'
if(trailz(6_8)/=1) print *,'err'
if(trailz(7_8)/=0) print *,'err'
if(trailz(8_8)/=3) print *,'err'
end
subroutine s2
integer(1)::i1(8)
integer(2)::i2(8)
integer(4)::i4(8)
integer(8)::i8(8)
i1=[1_1,2_1,3_1,4_1,5_1,6_1,7_1,8_1]
i2=[1_2,2_2,3_2,4_2,5_2,6_2,7_2,8_2]
i4=[1_4,2_4,3_4,4_4,5_4,6_4,7_4,8_4]
i8=[1_8,2_8,3_8,4_8,5_8,6_8,7_8,8_8]

if(any(trailz(i1)/=[0_1,1_1,0_1,2_1,0_1,1_1,0_1,3_1])) print *,'err'
if(any(trailz(i2)/=[0_2,1_2,0_2,2_2,0_2,1_2,0_2,3_2])) print *,'err'
if(any(trailz(i4)/=[0_4,1_4,0_4,2_4,0_4,1_4,0_4,3_4])) print *,'err'
if(any(trailz(i8)/=[0_8,1_8,0_8,2_8,0_8,1_8,0_8,3_8])) print *,'err'

end
