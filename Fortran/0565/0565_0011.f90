character(len = :),allocatable :: ch(:,:)

Allocate(character(4)::ch(4,4))

ch = 'PQRST'

call sub(ch) 
if(any(ch /= 'PQRST'))print *, 101
print *, "PASS"
contains
        subroutine sub(dmy1)
        character(len=4),value :: dmy1(:,:)
        dmy1 = 'ABCD'
        end subroutine
end
