module m
integer*4,parameter::c=DSHIFTR(Z'FF',J=0_1,shift=7)
integer*4,parameter::d=DSHIFTR(o'07',J=0_2,shift=7)
integer*4,parameter::e=DSHIFTR(b'110',J=0_4,shift=7)
integer,parameter::f=DSHIFTR(i=0_1,j=z'0a',shift=7)
integer,parameter::g=DSHIFTR(i=0_2,j=b'101',shift=7)
integer,parameter::h=DSHIFTR(i=0_8,j=o'04',shift=7)
end module

use m
if(c .ne. -2)print*,"100"
if(d .ne. 3584)print*,"101"
if(e .ne. 201326592)print*,"102"
if(f .ne. 0)print*,"103"
if(g .ne. 0)print*,"104"
if(h .ne. 0)print*,"105"
print*,"PASS"
end

