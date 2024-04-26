implicit none
call ss

contains
subroutine ss
block
save
integer,allocatable :: alc
allocate(alc)
alc=2
print*,alc
end block

end subroutine
end
