integer::x
x=sub(NULL())
if(x.ne.10)print*,"101"
print*,"pass"
contains
function sub(dmy)
real*8,allocatable:: dmy
integer::sub
allocate(dmy)
dmy =10
if (rank(dmy).ne.0)print*,"101"
if (kind(dmy).ne.8)print*,"102"
sub=dmy
end function
end

