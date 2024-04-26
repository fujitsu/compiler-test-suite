integer,parameter::a=storage_size(int(25.43),int(2.09))
integer,parameter::b=storage_size(real(25),int(2.09))
integer,parameter::c=storage_size(char(29),int(4.09))
integer,parameter::d=kind(storage_size(int(25.43),int(2.09)))
integer,parameter::e=kind(storage_size(real(25),int(8.09)))
integer,parameter::f=kind(storage_size(char(29),int(4.09)))
integer,parameter::g=kind(storage_size(int(25.43)))
integer,parameter::h=kind(storage_size(real(25)))
integer,parameter::i=kind(storage_size(char(29)))
if(a .ne. storage_size(int(25.43),int(2.09)))print*,"100"
if(b .ne. storage_size(real(25),int(2.09)))print*,"101"
if(c .ne. storage_size(char(29),int(4.09)))print*,"102"
if(d .ne. 2)print*,"103"
if(e .ne. 8)print*,"104"
if(f .ne. 4)print*,"105"
if(g .ne. kind(storage_size(int(25.43))))print*,"106"
if(h .ne. kind(storage_size(real(25))))print*,"107"
if(i .ne. kind(storage_size(char(29))))print*,"108"
print*,"PASS"
end
