integer*1,parameter::a=b'10000101'
integer*1,parameter::b=z'0b'
integer*2,parameter::c=z'0a'
integer*2,parameter::d=o'07'
integer*4,parameter::e=b'10000111'
integer*4,parameter::f=o'2'
integer*8,parameter::g=z'016'
integer*8,parameter::h=b'00110011'
integer,parameter::i=DSHIFTR(a,b,6)
integer,parameter::j=DSHIFTR(c,d,14)
integer,parameter::k=DSHIFTR(e,f,31)
integer*8,parameter::l=DSHIFTR(g,h,60)
if(i .ne. 20)print*,"100"
if(j .ne. 40)print*,"1001"
if(k .ne. 270)print*,"102"
if(l .ne. 352)print*,"103"
print*,"PASS"
end

