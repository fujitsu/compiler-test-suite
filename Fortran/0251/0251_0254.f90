allocatable :: alc
block
allocatable :: alc
allocate(alc)
alc=10
if(allocated(alc))print*,"pass"
end block
if(allocated(alc))then
print*,"error"
else
print*,"pass"
end if
end

