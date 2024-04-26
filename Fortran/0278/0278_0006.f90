integer,parameter::a=kind(LEADZ(-1_1))
integer,parameter::b=kind(LEADZ(-1_2))
integer,parameter::c=kind(LEADZ(-1_4))
integer,parameter::d=kind(LEADZ(-1_8))
integer,parameter::e=kind(LEADZ(123_1))
integer,parameter::f=kind(LEADZ(4632_2))
integer,parameter::g=kind(LEADZ(485749_4))
integer,parameter::h=kind(LEADZ(475347536939667_8))
if(a .ne. kind(LEADZ(-1_1)))print*,"100"
if(b .ne. kind(LEADZ(-1_2)))print*,"101"
if(c .ne. kind(LEADZ(-1_4)))print*,"102"
if(d .ne. kind(LEADZ(-1_8)))print*,"103"
if(e .ne. kind(LEADZ(123_1)))print*,"104"
if(f .ne. kind(LEADZ(4632_2)))print*,"105"
if(g .ne. kind(LEADZ(485749_4)))print*,"106"
if(h .ne. kind(LEADZ(475347536939667_8)))print*,"107"
print*,"PASS"
end
