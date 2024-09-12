character(len = 4) :: ch(5)

ch = 'PQRS'

call sub(ch) 
if(any(ch /= 'PQRS'))print *, 101
print *, "PASS"
contains
        subroutine sub(dmy1)
        character,value :: dmy1(5)
        dmy1 = 'ABCD'
        end subroutine
end
