call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
integer(1),allocatable::i1_1
integer(1),allocatable::i1_2
integer(1),allocatable::i1_3
integer(1),allocatable::i1_4
integer(1),allocatable::i1_5
integer(1),allocatable::i1_6
integer(1),allocatable::i1_7
integer(1),allocatable::i1_8
integer(1),allocatable::i1_9
integer(1),allocatable::i1_10
integer(1),allocatable::i1_11
integer(1),allocatable::i1_12
integer(1),allocatable::i1_13
integer(1),allocatable::i1_14
integer(1),allocatable::i1_15

i1_1=1_1
i1_2=1_2
i1_3=1_4
i1_4=1_8
i1_5=1.0_4
i1_6=1.0_8
i1_7=1.0_16
i1_8=(1.0_4,0.0_4)
i1_9=(1.0_8,0.0_8)
i1_10=(1.0_16,0.0_16)
i1_11=.true._1
i1_12=.true._2
i1_13=.true._4
i1_14=.true._8
i1_15=huge(1_1)

if(i1_1/=1_1) print *,'err1'
if(i1_2/=1_1) print *,'err2'
if(i1_3/=1_1) print *,'err3'
if(i1_4/=1_1) print *,'err4'
if(i1_5/=1_1) print *,'err5'
if(i1_6/=1_1) print *,'err6'
if(i1_7/=1_1) print *,'err7'
if(i1_8/=1_1) print *,'err8'
if(i1_9/=1_1) print *,'err9'
if(i1_10/=1_1) print *,'err10'
if(i1_11/=1_1) print *,'err11'
if(i1_12/=1_1) print *,'err12'
if(i1_13/=1_1) print *,'err13'
if(i1_14/=1_1) print *,'err14'
if(i1_15/=127) print *,'err15'
end subroutine s1

subroutine s2
integer(2),allocatable::i2_1
integer(2),allocatable::i2_2
integer(2),allocatable::i2_3
integer(2),allocatable::i2_4
integer(2),allocatable::i2_5
integer(2),allocatable::i2_6
integer(2),allocatable::i2_7
integer(2),allocatable::i2_8
integer(2),allocatable::i2_9
integer(2),allocatable::i2_10
integer(2),allocatable::i2_11
integer(2),allocatable::i2_12
integer(2),allocatable::i2_13
integer(2),allocatable::i2_14
integer(2),allocatable::i2_15

i2_1=1_1
i2_2=1_2
i2_3=1_4
i2_4=1_8
i2_5=1.0_4
i2_6=1.0_8
i2_7=1.0_16
i2_8=(1.0_4,0.0_4)
i2_9=(1.0_8,0.0_8)
i2_10=(1.0_16,0.0_16)
i2_11=.true._1
i2_12=.true._2
i2_13=.true._4
i2_14=.true._8
i2_15=huge(1_2)

if(i2_1/=1_1) print *,'err1'
if(i2_2/=1_1) print *,'err2'
if(i2_3/=1_1) print *,'err3'
if(i2_4/=1_1) print *,'err4'
if(i2_5/=1_1) print *,'err5'
if(i2_6/=1_1) print *,'err6'
if(i2_7/=1_1) print *,'err7'
if(i2_8/=1_1) print *,'err8'
if(i2_9/=1_1) print *,'err9'
if(i2_10/=1_1) print *,'err10'
if(i2_11/=1_1) print *,'err11'
if(i2_12/=1_1) print *,'err12'
if(i2_13/=1_1) print *,'err13'
if(i2_14/=1_1) print *,'err14'
if(i2_15/=32767) print *,'err15' 
end subroutine s2

subroutine s3
integer(4),allocatable::i4_1
integer(4),allocatable::i4_2
integer(4),allocatable::i4_3
integer(4),allocatable::i4_4
integer(4),allocatable::i4_5
integer(4),allocatable::i4_6
integer(4),allocatable::i4_7
integer(4),allocatable::i4_8
integer(4),allocatable::i4_9
integer(4),allocatable::i4_10
integer(4),allocatable::i4_11
integer(4),allocatable::i4_12
integer(4),allocatable::i4_13
integer(4),allocatable::i4_14
integer(4),allocatable::i4_15

i4_1=1_1
i4_2=1_2
i4_3=1_4
i4_4=1_8
i4_5=1.0_4
i4_6=1.0_8
i4_7=1.0_16
i4_8=(1.0_4,0.0_4)
i4_9=(1.0_8,0.0_8)
i4_10=(1.0_16,0.0_16)
i4_11=.true._1
i4_12=.true._2
i4_13=.true._4
i4_14=.true._8
i4_15=huge(1_4)

if(i4_1/=1_1) print *,'err1'
if(i4_2/=1_1) print *,'err2'
if(i4_3/=1_1) print *,'err3'
if(i4_4/=1_1) print *,'err4'
if(i4_5/=1_1) print *,'err5'
if(i4_6/=1_1) print *,'err6'
if(i4_7/=1_1) print *,'err7'
if(i4_8/=1_1) print *,'err8'
if(i4_9/=1_1) print *,'err9'
if(i4_10/=1_1) print *,'err10'
if(i4_11/=1_1) print *,'err11'
if(i4_12/=1_1) print *,'err12'
if(i4_13/=1_1) print *,'err13'
if(i4_14/=1_1) print *,'err14'
if(i4_15/=2147483647) print *,'err15'
end subroutine s3
subroutine s4
integer(8),allocatable::i8_1
integer(8),allocatable::i8_2
integer(8),allocatable::i8_3
integer(8),allocatable::i8_4
integer(8),allocatable::i8_5
integer(8),allocatable::i8_6
integer(8),allocatable::i8_7
integer(8),allocatable::i8_8
integer(8),allocatable::i8_9
integer(8),allocatable::i8_10
integer(8),allocatable::i8_11
integer(8),allocatable::i8_12
integer(8),allocatable::i8_13
integer(8),allocatable::i8_14
integer(8),allocatable::i8_15

i8_1=1_1
i8_2=1_2
i8_3=1_4
i8_4=1_8
i8_5=1.0_4
i8_6=1.0_8
i8_7=1.0_16
i8_8=(1.0_4,0.0_4)
i8_9=(1.0_8,0.0_8)
i8_10=(1.0_16,0.0_16)
i8_11=.true._1
i8_12=.true._2
i8_13=.true._4
i8_14=.true._8
i8_15=huge(1_8)

if(i8_1/=1_1) print *,'err1'
if(i8_2/=1_1) print *,'err2'
if(i8_3/=1_1) print *,'err3'
if(i8_4/=1_1) print *,'err4'
if(i8_5/=1_1) print *,'err5'
if(i8_6/=1_1) print *,'err6'
if(i8_7/=1_1) print *,'err7'
if(i8_8/=1_1) print *,'err8'
if(i8_9/=1_1) print *,'err9'
if(i8_10/=1_1) print *,'err10'
if(i8_11/=1_1) print *,'err11'
if(i8_12/=1_1) print *,'err12'
if(i8_13/=1_1) print *,'err13'
if(i8_14/=1_1) print *,'err14'
if(i8_15/=9223372036854775807) print *,'err15'
end subroutine s4
