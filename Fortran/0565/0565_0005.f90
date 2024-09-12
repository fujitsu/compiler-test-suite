character(len = :),allocatable :: ch(:,:)

Allocate(character(4)::ch(4,4))

ch = 'PQRST'

call sub(ch) 
if(any(ch /= 'PQRS'))print *, 101
print *, "PASS"
contains
        subroutine sub(dmy1)
        character,value :: dmy1(4,4)
        dmy1 = 'ABCD'
        end subroutine
end
