character(len = 4) :: ch(5)

ch = 'PQRS'

call sub(ch,size(ch)) 
if(any(ch /= 'PQRS'))print *, 101
print *, "PASS"
contains
        subroutine sub(dmy1,s1)
        integer :: s1
        character,value :: dmy1(s1)
        dmy1 = 'ABCD'
        end subroutine
end
