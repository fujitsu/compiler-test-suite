module mod1
type tt
 integer::i
end type

interface operator(+)
module procedure pls
end interface operator(+)

contains
function pls(a,b)
type(tt),intent(in) :: a,b
class(tt),pointer :: pls
allocate(pls)

pls%i=a%i+b%i+1
end function
end module

use mod1
type(tt) :: ty_tgt1,ty_tgt2

type(tt) :: ty_obj

ty_obj%i = 2

ty_tgt2%i = 4

ty_tgt1 = ty_obj


select type(aa=>ty_tgt1+ty_tgt2)
type is(tt)
 aa = ty_obj
end select
end
