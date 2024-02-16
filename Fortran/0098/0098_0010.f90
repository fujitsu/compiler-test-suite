module mmm1
        type :: t1
        integer :: ii=2
        contains
        end type

        contains
        end module
use mmm1
type(t1) :: obj
if(obj%ii /=2) print *,101
print *,"Pass"
contains
end
