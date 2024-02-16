integer*1,parameter::a=b'10000101'
integer*1,parameter::b=z'0b'
integer*2,parameter::c=z'0A'
integer*2,parameter::d=o'07'
integer*4,parameter::e=b'10000111'
integer*4,parameter::f=o'2'
integer*8,parameter::g=z'016'
integer*8,parameter::h=b'00110011'
integer,parameter::i=DSHIFTL(a,b,6)
integer,parameter::j=DSHIFTL(c,d,14)
integer*4,parameter::k=DSHIFTL(e,f,31)
integer*8,parameter::l=DSHIFTL(g,h,60)
if(i .ne. 66)print*,"100"
if(j .ne. -32767)print*,"101"
if(k .ne. -2147483647)print*,"102"
if(l .ne. 6917529027641081859_8)print*,"103"
print*,"PASS"
end

