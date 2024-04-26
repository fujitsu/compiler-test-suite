integer,parameter::a=kind(TRAILZ(-1_1))
integer,parameter::b=kind(TRAILZ(-1_2))
integer,parameter::c=kind(TRAILZ(-1_4))
integer,parameter::d=kind(TRAILZ(-1_8))
integer,parameter::e=kind(TRAILZ(123_1))
integer,parameter::f=kind(TRAILZ(4632_2))
integer,parameter::g=kind(TRAILZ(485749_4))
integer,parameter::h=kind(TRAILZ(475347536939667_8))
if(a .ne. kind(TRAILZ(-1_1)))print*,"100"
if(b .ne. kind(TRAILZ(-1_2)))print*,"101"
if(c .ne. kind(TRAILZ(-1_4)))print*,"102"
if(d .ne. kind(TRAILZ(-1_8)))print*,"103"
if(e .ne. kind(TRAILZ(123_1)))print*,"104"
if(f .ne. kind(TRAILZ(4632_2)))print*,"105"
if(g .ne. kind(TRAILZ(485749_4)))print*,"106"
if(h .ne. kind(TRAILZ(475347536939667_8)))print*,"107"
print*,"PASS"
end
