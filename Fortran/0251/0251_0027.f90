implicit none
call ss

contains
subroutine ss
block
save
character(kind=4),allocatable :: alc
allocate(alc)
alc=4_'a'
block
character(kind=4),allocatable :: alc
allocate(alc)
alc=4_'b'
if(alc /= 4_'b') print*,101 
end block
if(alc /= 4_'a') print*,102 
print*,'pass'
end block

end subroutine
end
