module n
integer*1,parameter::a1=2
integer*2,parameter::a2=1
integer*4,parameter::a3=8
integer*8,parameter::a4=4
integer,parameter::a=storage_size(2,a1)
integer,parameter::b=kind(storage_size(2,a1))
integer,parameter::c=storage_size(22,a2)
integer,parameter::d=kind(storage_size(22,a2))
integer,parameter::e=storage_size(24,a3)
integer,parameter::f=kind(storage_size(24,a3))
integer,parameter::g=storage_size(25,a4)
integer,parameter::h=kind(storage_size(25,a4))
end module
use n
if(a .ne. storage_size(2,a1))print*,"100"
if(b .ne. kind(storage_size(2,a1)))print*,"101"
if(c .ne. storage_size(22,a2))print*,"102"
if(d .ne. kind(storage_size(22,a2)))print*,"103"
if(e .ne. storage_size(24,a3))print*,"104"
if(f .ne. kind(storage_size(24,a3)))print*,"105"
if(g .ne. storage_size(25,a4))print*,"106"
if(h .ne. kind(storage_size(25,a4)))print*,"107"
print*,"PASS"
end
