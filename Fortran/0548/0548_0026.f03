call s1
call s2
call s3
print *,'pass'
end
subroutine s1
integer(1)::i1(2)
integer(2)::i2(2)
integer(4)::i4(2)
integer(8)::i8(2)
i1=[1,2]
i2=[3,4]
i4=[5,6]
i8=[7,8]
if(any(maskl(i1)/=shiftl(maskr(i1),bit_size(0)-i1))) print *,'err1'
if(any(maskl(i2)/=shiftl(maskr(i2),bit_size(0)-i2))) print *,'err2'
if(any(maskl(i4)/=shiftl(maskr(i4),bit_size(0)-i4))) print *,'err3'
if(any(maskl(i8)/=shiftl(maskr(i8),bit_size(0)-i8))) print *,'err4'
if(any(maskl(i=i1)/=shiftl(i=maskr(i1),shift=bit_size(0)-i1))) print *,'err5'
if(any(maskl(i=i2)/=shiftl(i=maskr(i2),shift=bit_size(0)-i2))) print *,'err6'
if(any(maskl(i=i4)/=shiftl(i=maskr(i4),shift=bit_size(0)-i4))) print *,'err7'
if(any(maskl(i=i8)/=shiftl(i=maskr(i8),shift=bit_size(0)-i8))) print *,'err8'
end
subroutine s2
integer(1) i1
integer(2) i2
integer(4) i4
integer(8) i8
i1 = -128
i2 = -32768
i4 = -2147483647
i8 = -huge(1_8)
if(shiftr(i1,4)+shifta(i1,4)/=0) print *,'err'
if(shiftr(i2,4)+shifta(i2,4)/=0) print *,'err'
if(shiftr(i4,16)+shifta(i4,16)/=0) print *,'err'
if(shiftr(i8,32)+shifta(i8,32)/=0)  print *,'err'
end
subroutine s3
integer(1):: i1(2)
integer(2):: i2(2)
integer(4):: i4(2)
integer(8):: i8(2)
i1 = -128
i2 = -32768
i4 = -2147483647
i8 = -huge(1_8)
if(any(shiftr(i1,4)+shifta(i1,4)/=[0,0])) print *,'err'
if(any(shiftr(i2,4)+shifta(i2,4)/=[0,0])) print *,'err'
if(any(shiftr(i4,16)+shifta(i4,16)/=[0,0])) print *,'err'
if(any(shiftr(i8,32)+shifta(i8,32)/=[0,0]))  print *,'err'
end
