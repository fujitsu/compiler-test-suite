call ss()

contains
subroutine ss()
block
integer,allocatable :: alc(:)
allocate(alc(2))
alc=2
if(all(alc==2)) print*,'pass'
end block
end subroutine
end
