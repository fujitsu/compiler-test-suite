integer,parameter::i=DSHIFTL(b'101',4_1,1)
integer,parameter::j=DSHIFTL(z'0a',6_2,16)
integer,parameter::k=DSHIFTL(o'05',2_4,32)
integer,parameter::l=DSHIFTL(o'05',2_8,64)
integer,parameter::m=DSHIFTL(4_1,b'101',1)
integer,parameter::n=DSHIFTL(6_2,z'0a',16)
integer,parameter::o=DSHIFTL(2_4,o'05',32)
integer,parameter::p=DSHIFTL(2_8,o'05',64)
integer*4,parameter::q=DSHIFTL(11_4,z'09',6)
if(i .ne. 10)print*,"100"
if(j .ne. 6)print*,"101"
if(k .ne. 2)print*,"102"
if(l .ne. 2)print*,"103"
if(m .ne. 8)print*,"104"
if(n .ne. 10)print*,"105"
if(o .ne. 5)print*,"106"
if(p .ne. 5)print*,"107"
if(q .ne. 704)print*,"108"
print*,"PASS"
end

