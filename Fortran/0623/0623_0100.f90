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
if (1.eq.2) print *,same_type_as(p01, p02)
if (same_type_as(p01, p02).eqv..false.) print *,'fail'
print *,"pass"
end
