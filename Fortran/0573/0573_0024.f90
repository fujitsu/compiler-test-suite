character(len=1),allocatable::dmy
call sub(NULL())
call sub(NULL(dmy))
print*,"pass"
contains
subroutine sub(dmy)
character(len=1),allocatable::dmy
allocate(dmy)
dmy ='a'
if (rank(dmy).ne.0)print*,"101"
if (kind(dmy).ne.1)print*,"102"
if (len(dmy).ne.1)print*,"103"
end subroutine
end

