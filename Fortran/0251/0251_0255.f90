allocatable::alc
call sub
contains
subroutine sub
allocatable::alc
allocate(alc)
block
integer::alc
allocatable::alc
if(allocated(alc))then
print*,"error"
else
print*,"pass"
end if
end block
if(allocated(alc))print*,"pass"
end subroutine
end
