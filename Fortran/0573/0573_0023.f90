complex*16,allocatable:: dmy
call sub(NULL(dmy))
call sub(NULL())
print*,"pass"
contains
subroutine sub(dmy)
complex*16,allocatable:: dmy
allocate(dmy)
dmy%re =10
if (rank(dmy).ne.0)print*,"101"
if (kind(dmy).ne.8)print*,"102", kind(dmy)
end subroutine
end

