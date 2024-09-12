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
if(ieor(b'1',i1)/=2_4) print *,'err'
if(ieor(b'1',i2)/=2_4) print *,'err'
if(ieor(b'1',i4)/=2_4) print *,'err'
if(ieor(b'1',i8)/=2_8) print *,'err'
if(ieor(o'1',i1)/=2_4) print *,'err'
if(ieor(o'1',i2)/=2_4) print *,'err'
if(ieor(o'1',i4)/=2_4) print *,'err'
if(ieor(o'1',i8)/=2_8) print *,'err'
if(ieor(z'1',i1)/=2_4) print *,'err'
if(ieor(z'1',i2)/=2_4) print *,'err'
if(ieor(z'1',i4)/=2_4) print *,'err'
if(ieor(z'1',i8)/=2_8) print *,'err'
if(ieor(i=z'1',j=i1)/=2_4) print *,'err'
if(ieor(i=z'1',j=i2)/=2_4) print *,'err'
if(ieor(i=z'1',j=i4)/=2_4) print *,'err'
if(ieor(i=z'1',j=i8)/=2_8) print *,'err'

end
subroutine s2
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
i1=1;i2=1;i4=1;i8=1
if(ieor(i1,b'11')/=2_4) print *,'err'
if(ieor(i2,b'11')/=2_4) print *,'err'
if(ieor(i4,b'11')/=2_4) print *,'err'
if(ieor(i8,b'11')/=2_8) print *,'err'
if(ieor(i1,o'3')/=2_4) print *,'err'
if(ieor(i2,o'3')/=2_4) print *,'err'
if(ieor(i4,o'3')/=2_4) print *,'err'
if(ieor(i8,o'3')/=2_8) print *,'err'
if(ieor(i1,z'3')/=2_4) print *,'err'
if(ieor(i2,z'3')/=2_4) print *,'err'
if(ieor(i4,z'3')/=2_4) print *,'err'
if(ieor(i8,z'3')/=2_8) print *,'err'
end

subroutine s3
integer(1)::i1(1)
integer(2)::i2(1)
integer(4)::i4(1)
integer(8)::i8(1)
i1=3;i2=3;i4=3;i8=3
if(any(ieor(b'1',i1)/=[2_4])) print *,'err'
if(any(ieor(b'1',i2)/=[2_4])) print *,'err'
if(any(ieor(b'1',i4)/=[2_4])) print *,'err'
if(any(ieor(b'1',i8)/=[2_8])) print *,'err'
if(any(ieor(o'1',i1)/=[2_4])) print *,'err'
if(any(ieor(o'1',i2)/=[2_4])) print *,'err'
if(any(ieor(o'1',i4)/=[2_4])) print *,'err'
if(any(ieor(o'1',i8)/=[2_8])) print *,'err'
if(any(ieor(z'1',i1)/=[2_4])) print *,'err'
if(any(ieor(z'1',i2)/=[2_4])) print *,'err'
if(any(ieor(z'1',i4)/=[2_4])) print *,'err'
if(any(ieor(z'1',i8)/=[2_8])) print *,'err'
end
subroutine s4
integer(1)::i1(1)
integer(2)::i2(1)
integer(4)::i4(1)
integer(8)::i8(1)
i1=1;i2=1;i4=1;i8=1
if(any(ieor(i1,b'11')/=[2_4])) print *,'err'
if(any(ieor(i2,b'11')/=[2_4])) print *,'err'
if(any(ieor(i4,b'11')/=[2_4])) print *,'err'
if(any(ieor(i8,b'11')/=[2_8])) print *,'err'
if(any(ieor(i1,o'3')/=[2_4])) print *,'err'
if(any(ieor(i2,o'3')/=[2_4])) print *,'err'
if(any(ieor(i4,o'3')/=[2_4])) print *,'err'
if(any(ieor(i8,o'3')/=[2_8])) print *,'err'
if(any(ieor(i1,z'3')/=[2_4])) print *,'err'
if(any(ieor(i2,z'3')/=[2_4])) print *,'err'
if(any(ieor(i4,z'3')/=[2_4])) print *,'err'
if(any(ieor(i8,z'3')/=[2_8])) print *,'err'
end
subroutine s5
if(ieor(b'1',3_1)/=2_4) print *,'err'
if(ieor(b'1',3_2)/=2_4) print *,'err'
if(ieor(b'1',3_4)/=2_4) print *,'err'
if(ieor(b'1',3_8)/=2_8) print *,'err'
if(ieor(o'1',3_1)/=2_4) print *,'err'
if(ieor(o'1',3_2)/=2_4) print *,'err'
if(ieor(o'1',3_4)/=2_4) print *,'err'
if(ieor(o'1',3_8)/=2_8) print *,'err'
if(ieor(z'1',3_1)/=2_4) print *,'err'
if(ieor(z'1',3_2)/=2_4) print *,'err'
if(ieor(z'1',3_4)/=2_4) print *,'err'
if(ieor(z'1',3_8)/=2_8) print *,'err'
if(ieor(i=z'1',j=3_1)/=2_4) print *,'err'
if(ieor(i=z'1',j=3_2)/=2_4) print *,'err'
if(ieor(i=z'1',j=3_4)/=2_4) print *,'err'
if(ieor(i=z'1',j=3_8)/=2_8) print *,'err'

end
