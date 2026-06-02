integer,allocatable:: dmy(:)
integer,pointer:: dmy2(:)
call sub(NULL(),NULL())
call sub(NULL(dmy),NULL(dmy2))
print*,"pass"
contains
subroutine sub(dmy,dmy2)
integer,allocatable:: dmy(:)
integer,pointer:: dmy2(:)
if (rank(dmy).ne.1)print*,"101"
if (rank(dmy2).ne.1)print*,"104"
end subroutine
end

