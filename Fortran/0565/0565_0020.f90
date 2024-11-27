character(len = :),allocatable :: ch(:,:)

Allocate(character(4)::ch(4,4))

ch = 'PQRST'

call sub(ch,size(ch,1),size(ch,2)) 
if(any(ch /= 'PQRST'))print *, 101
print *, "PASS"
contains
        subroutine sub(dmy1,s1,s2)
        integer :: s1,s2
        character,value :: dmy1(s1,s2)
        dmy1 = 'ABCD'
        end subroutine
end
