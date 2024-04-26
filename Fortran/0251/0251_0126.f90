call ss

contains
subroutine ss
block
integer,allocatable :: alc
allocate(alc)
alc=2

if(alc/=2) print*,102
print*,'pass'
return
end block
print*,'fail'
end subroutine
end
