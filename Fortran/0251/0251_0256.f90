allocatable::alc
block
allocatable::alc
allocate(alc)
if(allocated(alc))print*,"pass"
end block
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
  block
  allocatable::alc
  allocate(alc)
  if(allocated(alc))print*,"pass"
  end block
end block
if(allocated(alc))print*,"pass"
end subroutine
end
