call ss

contains
subroutine ss
class(*),allocatable :: alc,alc2
character(2) :: var
var='ch'
block
integer :: var
var=2
allocate(alc,source=var)
select type(alc)
type is(character(*))
 print*,101
type is(integer)
 print*,'pass',alc
class default
 print*,102
end select
end block
block
integer :: var
var=2
allocate(alc2,source=var)
select type(alc2)
type is(character(*))
 print*,101
type is(integer)
 print*,'pass',alc2
class default
 print*,102
end select
end block
if(var/='ch') print*,103
end subroutine
end
