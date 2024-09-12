call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
if(maskl(1_1,1)/=shiftl(maskr(1_1,1),bit_size(0_1)-1_1)) print *,'err1'
if(maskl(2_1,1)/=shiftl(maskr(2_1,1),bit_size(0_1)-2_1)) print *,'err2'
if(maskl(3_1,1)/=shiftl(maskr(3_1,1),bit_size(0_1)-3_1)) print *,'err3'
if(maskl(4_1,1)/=shiftl(maskr(4_1,1),bit_size(0_1)-4_1)) print *,'err4'
if(maskl(5_1,1)/=shiftl(maskr(5_1,1),bit_size(0_1)-5_1)) print *,'err5'
if(maskl(6_1,1)/=shiftl(maskr(6_1,1),bit_size(0_1)-6_1)) print *,'err6'
if(maskl(7_1,1)/=shiftl(maskr(7_1,1),bit_size(0_1)-7_1)) print *,'err7'
if(maskl(8_1,1)/=shiftl(maskr(8_1,1),bit_size(0_1)-8_1)) print *,'err8'
if(kind(maskl(i=1_1,kind=1))/=1_1) print *,'err'
end
subroutine s2
if(maskl(1_2,2)/=shiftl(maskr(1_2,2),bit_size(0_2)-1_2)) print *,'err11'
if(maskl(2_2,2)/=shiftl(maskr(2_2,2),bit_size(0_2)-2_2)) print *,'err12'
if(maskl(3_2,2)/=shiftl(maskr(3_2,2),bit_size(0_2)-3_2)) print *,'err13'
if(maskl(4_2,2)/=shiftl(maskr(4_2,2),bit_size(0_2)-4_2)) print *,'err14'
if(maskl(5_2,2)/=shiftl(maskr(5_2,2),bit_size(0_2)-5_2)) print *,'err15'
if(maskl(6_2,2)/=shiftl(maskr(6_2,2),bit_size(0_2)-6_2)) print *,'err16'
if(maskl(7_2,2)/=shiftl(maskr(7_2,2),bit_size(0_2)-7_2)) print *,'err17'
if(maskl(8_2,2)/=shiftl(maskr(8_2,2),bit_size(0_2)-8_2)) print *,'err18'
if(maskl(9_2,2)/=shiftl(maskr(9_2,2),bit_size(0_2)-9_2)) print *,'err19'
if(maskl(10_2,2)/=shiftl(maskr(10_2,2),bit_size(0_2)-10_2)) print *,'err20'
if(maskl(11_2,2)/=shiftl(maskr(11_2,2),bit_size(0_2)-11_2)) print *,'err21'
if(maskl(12_2,2)/=shiftl(maskr(12_2,2),bit_size(0_2)-12_2)) print *,'err22'
if(maskl(13_2,2)/=shiftl(maskr(13_2,2),bit_size(0_2)-13_2)) print *,'err23'
if(maskl(14_2,2)/=shiftl(maskr(14_2,2),bit_size(0_2)-14_2)) print *,'err24'
if(maskl(15_2,2)/=shiftl(maskr(15_2,2),bit_size(0_2)-15_2)) print *,'err25'
if(maskl(16_2,2)/=shiftl(maskr(16_2,2),bit_size(0_2)-16_2)) print *,'err26'
if(kind(maskl(1_2,2))/=2_2) print *,'err'
end
subroutine s3
if(maskl(1_4,4)/=shiftl(maskr(1_4),bit_size(0)-1)) print *,'err30'
if(maskl(2_4,4)/=shiftl(maskr(2_4),bit_size(0)-2)) print *,'err31'
if(maskl(3_4,4)/=shiftl(maskr(3_4),bit_size(0)-3)) print *,'err32'
if(maskl(4_4,4)/=shiftl(maskr(4_4),bit_size(0)-4)) print *,'err33'
if(maskl(5_4,4)/=shiftl(maskr(5_4),bit_size(0)-5)) print *,'err34'
if(maskl(6_4,4)/=shiftl(maskr(6_4),bit_size(0)-6)) print *,'err35'
if(maskl(7_4,4)/=shiftl(maskr(7_4),bit_size(0)-7)) print *,'err36'
if(maskl(8_4,4)/=shiftl(maskr(8_4),bit_size(0)-8)) print *,'err37'
if(maskl(9_4,4)/=shiftl(maskr(9_4),bit_size(0)-9)) print *,'err38'
if(maskl(10_4,4)/=shiftl(maskr(10_4),bit_size(0)-10)) print *,'err39'
if(maskl(11_4,4)/=shiftl(maskr(11_4),bit_size(0)-11)) print *,'err40'
if(maskl(12_4,4)/=shiftl(maskr(12_4),bit_size(0)-12)) print *,'err41'
if(maskl(13_4,4)/=shiftl(maskr(13_4),bit_size(0)-13)) print *,'err42'
if(maskl(14_4,4)/=shiftl(maskr(14_4),bit_size(0)-14)) print *,'err43'
if(maskl(15_4,4)/=shiftl(maskr(15_4),bit_size(0)-15)) print *,'err44'
if(maskl(16_4,4)/=shiftl(maskr(16_4),bit_size(0)-16)) print *,'err45'
if(maskl(17_4,4)/=shiftl(maskr(17_4),bit_size(0)-17)) print *,'err46'
if(maskl(18_4,4)/=shiftl(maskr(18_4),bit_size(0)-18)) print *,'err47'
if(maskl(19_4,4)/=shiftl(maskr(19_4),bit_size(0)-19)) print *,'err48'
if(maskl(20_4,4)/=shiftl(maskr(20_4),bit_size(0)-20)) print *,'err49'
if(maskl(21_4,4)/=shiftl(maskr(21_4),bit_size(0)-21)) print *,'err50'
if(maskl(22_4,4)/=shiftl(maskr(22_4),bit_size(0)-22)) print *,'err51'
if(maskl(23_4,4)/=shiftl(maskr(23_4),bit_size(0)-23)) print *,'err52'
if(maskl(24_4,4)/=shiftl(maskr(24_4),bit_size(0)-24)) print *,'err53'
if(maskl(25_4,4)/=shiftl(maskr(25_4),bit_size(0)-25)) print *,'err54'
if(maskl(26_4,4)/=shiftl(maskr(26_4),bit_size(0)-26)) print *,'err55'
if(maskl(27_4,4)/=shiftl(maskr(27_4),bit_size(0)-27)) print *,'err56'
if(maskl(28_4,4)/=shiftl(maskr(28_4),bit_size(0)-28)) print *,'err57'
if(maskl(29_4,4)/=shiftl(maskr(29_4),bit_size(0)-29)) print *,'err58'
if(maskl(30_4,4)/=shiftl(maskr(30_4),bit_size(0)-30)) print *,'err59'
if(maskl(31_4,4)/=shiftl(maskr(31_4),bit_size(0)-31)) print *,'err60'
if(maskl(32_4,4)/=shiftl(maskr(32_4),bit_size(0)-32)) print *,'err61'
if(kind(maskl(1_4,4))/=4) print *,'err'
end

subroutine s4
if(maskl(1_8,8)/=shiftl(maskr(1_8,8),bit_size(0_8)-1_8)) print *,'err70'
if(maskl(2_8,8)/=shiftl(maskr(2_8,8),bit_size(0_8)-2_8)) print *,'err71'
if(maskl(3_8,8)/=shiftl(maskr(3_8,8),bit_size(0_8)-3_8)) print *,'err72'
if(maskl(4_8,8)/=shiftl(maskr(4_8,8),bit_size(0_8)-4_8)) print *,'err73'
if(maskl(5_8,8)/=shiftl(maskr(5_8,8),bit_size(0_8)-5_8)) print *,'err74'
if(maskl(6_8,8)/=shiftl(maskr(6_8,8),bit_size(0_8)-6_8)) print *,'err75'
if(maskl(7_8,8)/=shiftl(maskr(7_8,8),bit_size(0_8)-7_8)) print *,'err76'
if(maskl(8_8,8)/=shiftl(maskr(8_8,8),bit_size(0_8)-8_8)) print *,'err77'
if(maskl(9_8,8)/=shiftl(maskr(9_8,8),bit_size(0_8)-9_8)) print *,'err78'
if(maskl(10_8,8)/=shiftl(maskr(10_8,8),bit_size(0_8)-10_8)) print *,'err79'
if(maskl(11_8,8)/=shiftl(maskr(11_8,8),bit_size(0_8)-11_8)) print *,'err80'
if(maskl(12_8,8)/=shiftl(maskr(12_8,8),bit_size(0_8)-12_8)) print *,'err81'
if(maskl(13_8,8)/=shiftl(maskr(13_8,8),bit_size(0_8)-13_8)) print *,'err82'
if(maskl(14_8,8)/=shiftl(maskr(14_8,8),bit_size(0_8)-14_8)) print *,'err83'
if(maskl(15_8,8)/=shiftl(maskr(15_8,8),bit_size(0_8)-15_8)) print *,'err84'
if(maskl(16_8,8)/=shiftl(maskr(16_8,8),bit_size(0_8)-16_8)) print *,'err85'
if(maskl(17_8,8)/=shiftl(maskr(17_8,8),bit_size(0_8)-17_8)) print *,'err86'
if(maskl(18_8,8)/=shiftl(maskr(18_8,8),bit_size(0_8)-18_8)) print *,'err87'
if(maskl(19_8,8)/=shiftl(maskr(19_8,8),bit_size(0_8)-19_8)) print *,'err88'
if(maskl(20_8,8)/=shiftl(maskr(20_8,8),bit_size(0_8)-20_8)) print *,'err89'
if(maskl(21_8,8)/=shiftl(maskr(21_8,8),bit_size(0_8)-21_8)) print *,'err'
if(maskl(22_8,8)/=shiftl(maskr(22_8,8),bit_size(0_8)-22_8)) print *,'err'
if(maskl(23_8,8)/=shiftl(maskr(23_8,8),bit_size(0_8)-23_8)) print *,'err'
if(maskl(24_8,8)/=shiftl(maskr(24_8,8),bit_size(0_8)-24_8)) print *,'err'
if(maskl(25_8,8)/=shiftl(maskr(25_8,8),bit_size(0_8)-25_8)) print *,'err'
if(maskl(26_8,8)/=shiftl(maskr(26_8,8),bit_size(0_8)-26_8)) print *,'err'
if(maskl(27_8,8)/=shiftl(maskr(27_8,8),bit_size(0_8)-27_8)) print *,'err'
if(maskl(28_8,8)/=shiftl(maskr(28_8,8),bit_size(0_8)-28_8)) print *,'err'
if(maskl(29_8,8)/=shiftl(maskr(29_8,8),bit_size(0_8)-29_8)) print *,'err'
if(maskl(30_8,8)/=shiftl(maskr(30_8,8),bit_size(0_8)-30_8)) print *,'err'
if(maskl(31_8,8)/=shiftl(maskr(31_8,8),bit_size(0_8)-31_8)) print *,'err'
if(maskl(32_8,8)/=shiftl(maskr(32_8,8),bit_size(0_8)-32_8)) print *,'err'
if(maskl(33_8,8)/=shiftl(maskr(33_8,8),bit_size(0_8)-33_8)) print *,'err'
if(maskl(34_8,8)/=shiftl(maskr(34_8,8),bit_size(0_8)-34_8)) print *,'err'
if(maskl(35_8,8)/=shiftl(maskr(35_8,8),bit_size(0_8)-35_8)) print *,'err'
if(maskl(36_8,8)/=shiftl(maskr(36_8,8),bit_size(0_8)-36_8)) print *,'err'
if(maskl(37_8,8)/=shiftl(maskr(37_8,8),bit_size(0_8)-37_8)) print *,'err'
if(maskl(38_8,8)/=shiftl(maskr(38_8,8),bit_size(0_8)-38_8)) print *,'err'
if(maskl(39_8,8)/=shiftl(maskr(39_8,8),bit_size(0_8)-39_8)) print *,'err'
if(maskl(40_8,8)/=shiftl(maskr(40_8,8),bit_size(0_8)-40_8)) print *,'err'
if(maskl(41_8,8)/=shiftl(maskr(41_8,8),bit_size(0_8)-41_8)) print *,'err'
if(maskl(42_8,8)/=shiftl(maskr(42_8,8),bit_size(0_8)-42_8)) print *,'err'
if(maskl(43_8,8)/=shiftl(maskr(43_8,8),bit_size(0_8)-43_8)) print *,'err'
if(maskl(44_8,8)/=shiftl(maskr(44_8,8),bit_size(0_8)-44_8)) print *,'err'
if(maskl(45_8,8)/=shiftl(maskr(45_8,8),bit_size(0_8)-45_8)) print *,'err'
if(maskl(46_8,8)/=shiftl(maskr(46_8,8),bit_size(0_8)-46_8)) print *,'err'
if(maskl(47_8,8)/=shiftl(maskr(47_8,8),bit_size(0_8)-47_8)) print *,'err'
if(maskl(48_8,8)/=shiftl(maskr(48_8,8),bit_size(0_8)-48_8)) print *,'err'
if(maskl(49_8,8)/=shiftl(maskr(49_8,8),bit_size(0_8)-49_8)) print *,'err'
if(maskl(50_8,8)/=shiftl(maskr(50_8,8),bit_size(0_8)-50_8)) print *,'err'
if(maskl(51_8,8)/=shiftl(maskr(51_8,8),bit_size(0_8)-51_8)) print *,'err'
if(maskl(52_8,8)/=shiftl(maskr(52_8,8),bit_size(0_8)-52_8)) print *,'err'
if(maskl(53_8,8)/=shiftl(maskr(53_8,8),bit_size(0_8)-53_8)) print *,'err'
if(maskl(54_8,8)/=shiftl(maskr(54_8,8),bit_size(0_8)-54_8)) print *,'err'
if(maskl(55_8,8)/=shiftl(maskr(55_8,8),bit_size(0_8)-55_8)) print *,'err'
if(maskl(56_8,8)/=shiftl(maskr(56_8,8),bit_size(0_8)-56_8)) print *,'err'
if(maskl(57_8,8)/=shiftl(maskr(57_8,8),bit_size(0_8)-57_8)) print *,'err'
if(maskl(58_8,8)/=shiftl(maskr(58_8,8),bit_size(0_8)-58_8)) print *,'err'
if(maskl(59_8,8)/=shiftl(maskr(59_8,8),bit_size(0_8)-59_8)) print *,'err'
if(maskl(60_8,8)/=shiftl(maskr(60_8,8),bit_size(0_8)-60_8)) print *,'err'
if(maskl(61_8,8)/=shiftl(maskr(61_8,8),bit_size(0_8)-61_8)) print *,'err'
if(maskl(62_8,8)/=shiftl(maskr(62_8,8),bit_size(0_8)-62_8)) print *,'err'
if(maskl(63_8,8)/=shiftl(maskr(63_8,8),bit_size(0_8)-63_8)) print *,'err'
if(maskl(64_8,8)/=shiftl(maskr(64_8,8),bit_size(0_8)-64_8)) print *,'err'
if(kind(maskl(1_8,8))/=8) print *,'err'
end