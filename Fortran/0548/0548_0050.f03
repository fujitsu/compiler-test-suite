call s1
call s2
call s3
call s4
call s5
print *,'pass'
end

subroutine s1
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
i1=3;i2=3;i4=3;i8=3
if(ior(b'101',i1)/=7_4) print *,'err'
if(ior(b'101',i2)/=7_4) print *,'err'
if(ior(b'101',i4)/=7_4) print *,'err'
if(ior(b'101',i8)/=7_8) print *,'err'
if(ior(o'5',i1)/=7_4) print *,'err'
if(ior(o'5',i2)/=7_4) print *,'err'
if(ior(o'5',i4)/=7_4) print *,'err'
if(ior(o'5',i8)/=7_8) print *,'err'
if(ior(z'5',i1)/=7_4) print *,'err'
if(ior(z'5',i2)/=7_4) print *,'err'
if(ior(z'5',i4)/=7_4) print *,'err'
if(ior(z'5',i8)/=7_8) print *,'err'
if(ior(i=z'5',j=i1)/=7_4) print *,'err'
if(ior(i=z'5',j=i2)/=7_4) print *,'err'
if(ior(i=z'5',j=i4)/=7_4) print *,'err'
if(ior(i=z'5',j=i8)/=7_8) print *,'err'
end
subroutine s2
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
i1=5;i2=5;i4=5;i8=5
if(ior(i1,b'11')/=7_4) print *,'err'
if(ior(i2,b'11')/=7_4) print *,'err'
if(ior(i4,b'11')/=7_4) print *,'err'
if(ior(i8,b'11')/=7_8) print *,'err'
if(ior(i1,o'3')/=7_4) print *,'err'
if(ior(i2,o'3')/=7_4) print *,'err'
if(ior(i4,o'3')/=7_4) print *,'err'
if(ior(i8,o'3')/=7_8) print *,'err'
if(ior(i1,z'3')/=7_4) print *,'err'
if(ior(i2,z'3')/=7_4) print *,'err'
if(ior(i4,z'3')/=7_4) print *,'err'
if(ior(i8,z'3')/=7_8) print *,'err'
end

subroutine s3
integer(1)::i1(1)
integer(2)::i2(1)
integer(4)::i4(1)
integer(8)::i8(1)
i1=3;i2=3;i4=3;i8=3
if(any(ior(b'101',i1)/=[7_4])) print *,'err'
if(any(ior(b'101',i2)/=[7_4])) print *,'err'
if(any(ior(b'101',i4)/=[7_4])) print *,'err'
if(any(ior(b'101',i8)/=[7_8])) print *,'err'
if(any(ior(o'5',i1)/=[7_4])) print *,'err'
if(any(ior(o'5',i2)/=[7_4])) print *,'err'
if(any(ior(o'5',i4)/=[7_4])) print *,'err'
if(any(ior(o'5',i8)/=[7_8])) print *,'err'
if(any(ior(z'5',i1)/=[7_4])) print *,'err'
if(any(ior(z'5',i2)/=[7_4])) print *,'err'
if(any(ior(z'5',i4)/=[7_4])) print *,'err'
if(any(ior(z'5',i8)/=[7_8])) print *,'err'
end
subroutine s4
integer(1)::i1(1)
integer(2)::i2(1)
integer(4)::i4(1)
integer(8)::i8(1)
i1=5;i2=5;i4=5;i8=5
if(any(ior(i1,b'11')/=[7_4])) print *,'err'
if(any(ior(i2,b'11')/=[7_4])) print *,'err'
if(any(ior(i4,b'11')/=[7_4])) print *,'err'
if(any(ior(i8,b'11')/=[7_8])) print *,'err'
if(any(ior(i1,o'3')/=[7_4])) print *,'err'
if(any(ior(i2,o'3')/=[7_4])) print *,'err'
if(any(ior(i4,o'3')/=[7_4])) print *,'err'
if(any(ior(i8,o'3')/=[7_8])) print *,'err'
if(any(ior(i1,z'3')/=[7_4])) print *,'err'
if(any(ior(i2,z'3')/=[7_4])) print *,'err'
if(any(ior(i4,z'3')/=[7_4])) print *,'err'
if(any(ior(i8,z'3')/=[7_8])) print *,'err'
end
subroutine s5
if(ior(b'101',3_1)/=7_4) print *,'err'
if(ior(b'101',3_2)/=7_4) print *,'err'
if(ior(b'101',3_4)/=7_4) print *,'err'
if(ior(b'101',3_8)/=7_8) print *,'err'
if(ior(o'5',3_1)/=7_4) print *,'err'
if(ior(o'5',3_2)/=7_4) print *,'err'
if(ior(o'5',3_4)/=7_4) print *,'err'
if(ior(o'5',3_8)/=7_8) print *,'err'
if(ior(z'5',3_1)/=7_4) print *,'err'
if(ior(z'5',3_2)/=7_4) print *,'err'
if(ior(z'5',3_4)/=7_4) print *,'err'
if(ior(z'5',3_8)/=7_8) print *,'err'
if(ior(i=z'5',j=3_1)/=7_4) print *,'err'
if(ior(i=z'5',j=3_2)/=7_4) print *,'err'
if(ior(i=z'5',j=3_4)/=7_4) print *,'err'
if(ior(i=z'5',j=3_8)/=7_8) print *,'err'
end
