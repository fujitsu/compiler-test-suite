subroutine s(i)
integer abcdef(1,1,1,1,1,1,1,1,3,4,2)
interface 
subroutine z(&
 x01,x02,x03,a04,x05,x06,x07,x08,x09,x10,&
 x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,&
 x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,&
 x31,x32,x33,x34,x35) &
    bind(c,name='test_output')
integer(8),value::&
 x01,x02,x03,    x05,x06,x07,x08,x09,x10,&
 x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,&
 x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,&
 x31,x32,x33,x34,x35 
character     a04(*)
end subroutine
end interface
character*8,parameter:: a04='abcdef'
integer(8),parameter      ::&
 x01=3,x02=3,x03=3,    x05=3,x06=3,x07=3,x08=3,x09=3,x10=3,&
 x11=3,x12=3,x13=3,x14=3,x15=3,x16=3,x17=3,x18=3,x19=3,x20=3,&
 x21=3,x22=3,x23=3,x24=3,x25=3,x26=3,x27=3,x28=3,x29=3,x30=3,&
 x31=3,x32=3,x33=3,x34=3,x35=3
call z(&
 x01,x02,x03,a04,x05,x06,x07,x08,x09,x10,&
 x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,&
 x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,&
 x31,x32,x33,x34,x35) 
abcdef(1:i-2,1,1,1,1,1,1,1,1:3,1:4,1)=1
end
call s(3)
print *,'pass'
end
subroutine z(&
 x01,x02,x03,a04,x05,x06,x07,x08,x09,x10,&
 x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,&
 x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,&
 x31,x32,x33,x34,x35) &
    bind(c,name='test_output')
integer(8),value::&
 x01,x02,x03,    x05,x06,x07,x08,x09,x10,&
 x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,&
 x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,&
 x31,x32,x33,x34,x35 
character     a04(*)
x01=100
x02=100
x03=100
if (a04(1)/='a')print *,a04(1)
x05=100
x06=100
x07=100
x08=100
x09=100
x10=100
x11=100
x12=100
x13=100
x14=100
x15=100
x16=100
x17=100
x18=100
x19=100
x20=100
x21=100
x22=100
x23=100
x24=100
x25=100
x26=100
x27=100
x28=100
x29=100
x30=100
x31=100
x32=100
x33=100
x34=100
x35=100
end subroutine
