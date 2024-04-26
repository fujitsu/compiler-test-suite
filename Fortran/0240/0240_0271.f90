call s
print *,'pass'
end
subroutine s
type base
integer :: base01
end type
type,extends(base):: ext
integer :: ext01
end type
type (ext),target :: t01a, t01b
class(base),pointer:: p01,p02
p01=>t01a
p02=>t01b
print *,same_type_as(p01, p02)
if(same_type_as(p01, p02).neqv..true.) print *,'err'
end
