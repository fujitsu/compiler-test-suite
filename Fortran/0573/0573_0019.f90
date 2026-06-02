character,allocatable:: dmy
call sub(NULL(),NULL())
call sub(NULL(dmy),NULL(dmy))
print*,"pass"
contains
subroutine sub(dmy,dmy2)
character,allocatable:: dmy
character,allocatable:: dmy2
if(ALLOCATED(dmy).neqv..false.)print*,"108"
if(ALLOCATED(dmy2).neqv..false.)print*,"109"
allocate(dmy)
allocate(dmy2)
dmy = 'c'
dmy2 = 'd'
if(ALLOCATED(dmy).neqv..true.)print*,"108"
if(ALLOCATED(dmy2).neqv..true.)print*,"109"

if (kind(dmy).ne.1)print*,"102"
if (kind(dmy2).ne.1)print*,"102"
end subroutine
end

