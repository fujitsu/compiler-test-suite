call ss(3)

contains
subroutine ss(d)
integer,value :: d
block
integer,allocatable :: alc
integer :: arr(d)
character(d) :: ch

allocate(alc)
alc=size(arr)+len(ch)

if(alc/=6) print*,101
alc=alc+1
if(alc==7) stop 'program end'
print*,'fail'
end block
print*,'fail2'
end subroutine
end
