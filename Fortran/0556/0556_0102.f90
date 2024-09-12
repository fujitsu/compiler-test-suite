
module mod1
type tt2
 integer::i
end type
end module

call s()

contains

subroutine s()
use mod1
type tt
 integer::j
 class(tt2),pointer :: poly
end type

type(tt)::obj
obj%j=4
allocate(obj%poly)
obj%poly%i=0
print*,[obj%poly],obj%j,'pass'
end subroutine

end
