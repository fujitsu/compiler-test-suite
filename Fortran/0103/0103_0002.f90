module m
integer,parameter::c=DSHIFTL(Z'FF',J=0,shift=7)
integer,parameter::d=DSHIFTL(o'07',J=0,shift=7)
integer,parameter::e=DSHIFTL(b'110',J=0,shift=7)
integer,parameter::f=DSHIFTL(i=0,j=z'0a',shift=7)
integer,parameter::g=DSHIFTL(i=0,j=b'101',shift=7)
integer,parameter::h=DSHIFTL(i=0,j=o'04',shift=7)
end module

use m
if(c .ne. 32640)print*,"100"
if(d .ne. 896)print*,"101"
if(e .ne. 768)print*,"102"
if(f .ne. 0)print*,"103"
if(g .ne. 0)print*,"104"
if(h .ne. 0)print*,"105"
print*,"PASS"
end

