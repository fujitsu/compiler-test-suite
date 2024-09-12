Module m1
character(len = :),allocatable :: ch(:,:)
contains
        subroutine sub(dmy1)
        character,value :: dmy1(4,4)
        dmy1 = 'ABCD'
        end subroutine
end module

use m1
Allocate(character(4)::ch(4,4))

ch = 'PQRST'

call sub(ch) 
if(any(ch /= 'PQRS'))print *, 101
print *, "PASS"
end
