character(len = 4),allocatable :: ch(:,:)

Allocate(ch(4,4))

ch = 'PQRST'

call sub(ch) 
if(any(ch /= 'PQRS'))print *, 101
print *, "PASS"
contains
        subroutine sub(dmy1)
        character(len = 3),value :: dmy1(4,4)
        dmy1 = 'ABC'
        end subroutine
end