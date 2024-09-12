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
if(iand(b'1',i1)/=1_4) print *,'err'
if(iand(b'1',i2)/=1_4) print *,'err'
if(iand(b'1',i4)/=1_4) print *,'err'
if(iand(b'1',i8)/=1_8) print *,'err'
if(iand(o'1',i1)/=1_4) print *,'err'
if(iand(o'1',i2)/=1_4) print *,'err'
if(iand(o'1',i4)/=1_4) print *,'err'
if(iand(o'1',i8)/=1_8) print *,'err'
if(iand(z'1',i1)/=1_4) print *,'err'
if(iand(z'1',i2)/=1_4) print *,'err'
if(iand(z'1',i4)/=1_4) print *,'err'
if(iand(z'1',i8)/=1_8) print *,'err'
if(iand(i=z'1',j=i1)/=1_4) print *,'err'
if(iand(i=z'1',j=i2)/=1_4) print *,'err'
if(iand(i=z'1',j=i4)/=1_4) print *,'err'
if(iand(i=z'1',j=i8)/=1_8) print *,'err'
end
subroutine s2
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
i1=1;i2=1;i4=1;i8=1
if(iand(i1,b'11')/=1_4) print *,'err'
if(iand(i2,b'11')/=1_4) print *,'err'
if(iand(i4,b'11')/=1_4) print *,'err'
if(iand(i8,b'11')/=1_8) print *,'err'
if(iand(i1,o'3')/=1_4) print *,'err'
if(iand(i2,o'3')/=1_4) print *,'err'
if(iand(i4,o'3')/=1_4) print *,'err'
if(iand(i8,o'3')/=1_8) print *,'err'
if(iand(i1,z'3')/=1_4) print *,'err'
if(iand(i2,z'3')/=1_4) print *,'err'
if(iand(i4,z'3')/=1_4) print *,'err'
if(iand(i8,z'3')/=1_8) print *,'err'
end

subroutine s3
integer(1)::i1(1)
integer(2)::i2(1)
integer(4)::i4(1)
integer(8)::i8(1)
i1=3;i2=3;i4=3;i8=3
if(any(iand(b'1',i1)/=[1_4])) print *,'err'
if(any(iand(b'1',i2)/=[1_4])) print *,'err'
if(any(iand(b'1',i4)/=[1_4])) print *,'err'
if(any(iand(b'1',i8)/=[1_8])) print *,'err'
if(any(iand(o'1',i1)/=[1_4])) print *,'err'
if(any(iand(o'1',i2)/=[1_4])) print *,'err'
if(any(iand(o'1',i4)/=[1_4])) print *,'err'
if(any(iand(o'1',i8)/=[1_8])) print *,'err'
if(any(iand(z'1',i1)/=[1_4])) print *,'err'
if(any(iand(z'1',i2)/=[1_4])) print *,'err'
if(any(iand(z'1',i4)/=[1_4])) print *,'err'
if(any(iand(z'1',i8)/=[1_8])) print *,'err'
end
subroutine s4
integer(1)::i1(1)
integer(2)::i2(1)
integer(4)::i4(1)
integer(8)::i8(1)
i1=1;i2=1;i4=1;i8=1
if(any(iand(i1,b'11')/=[1_4])) print *,'err'
if(any(iand(i2,b'11')/=[1_4])) print *,'err'
if(any(iand(i4,b'11')/=[1_4])) print *,'err'
if(any(iand(i8,b'11')/=[1_8])) print *,'err'
if(any(iand(i1,o'3')/=[1_4])) print *,'err'
if(any(iand(i2,o'3')/=[1_4])) print *,'err'
if(any(iand(i4,o'3')/=[1_4])) print *,'err'
if(any(iand(i8,o'3')/=[1_8])) print *,'err'
if(any(iand(i1,z'3')/=[1_4])) print *,'err'
if(any(iand(i2,z'3')/=[1_4])) print *,'err'
if(any(iand(i4,z'3')/=[1_4])) print *,'err'
if(any(iand(i8,z'3')/=[1_8])) print *,'err'
end
subroutine s5
if(iand(b'1',3_1)/=1_4) print *,'err'
if(iand(b'1',3_2)/=1_4) print *,'err'
if(iand(b'1',3_4)/=1_4) print *,'err'
if(iand(b'1',3_8)/=1_8) print *,'err'
if(iand(o'1',3_1)/=1_4) print *,'err'
if(iand(o'1',3_2)/=1_4) print *,'err'
if(iand(o'1',3_4)/=1_4) print *,'err'
if(iand(o'1',3_8)/=1_8) print *,'err'
if(iand(z'1',3_1)/=1_4) print *,'err'
if(iand(z'1',3_2)/=1_4) print *,'err'
if(iand(z'1',3_4)/=1_4) print *,'err'
if(iand(z'1',3_8)/=1_8) print *,'err'
if(iand(i=z'1',j=3_1)/=1_4) print *,'err'
if(iand(i=z'1',j=3_2)/=1_4) print *,'err'
if(iand(i=z'1',j=3_4)/=1_4) print *,'err'
if(iand(i=z'1',j=3_8)/=1_8) print *,'err'
end
