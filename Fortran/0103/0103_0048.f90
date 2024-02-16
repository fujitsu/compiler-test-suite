integer,parameter::i=DSHIFTR(b'101',4_1,0)
integer,parameter::j=DSHIFTR(z'0a',6_2,16)
integer,parameter::k=DSHIFTR(o'05',2_4,32)
integer,parameter::l=DSHIFTR(o'05',2_8,64)
integer,parameter::m=DSHIFTR(4_1,b'101',0)
integer,parameter::n=DSHIFTR(6_2,z'0a',16)
integer,parameter::o=DSHIFTR(2_4,o'05',32)
integer,parameter::p=DSHIFTR(2_8,o'05',64)
integer*4,parameter::q=DSHIFTR(11_4,z'09',6)
if(i .ne. 4)print*,"100"
if(j .ne. 10)print*,"101"
if(k .ne. 5)print*,"102"
if(l .ne. 5)print*,"103"
if(m .ne. 5)print*,"104"
if(n .ne. 6)print*,"105"
if(o .ne. 2)print*,"106"
if(p .ne. 2)print*,"107"
if(q .ne. 738197504)print*,"108"
print*,"PASS"
end

