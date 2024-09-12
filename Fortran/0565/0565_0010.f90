character(len = 4) :: ch(5)

ch = 'PQRS'

call sub(ch) 
print *, "PASS"
contains
        subroutine sub(dmy1)
        character(len=4),value :: dmy1(:)
        dmy1 = 'ABCD'
        end subroutine
end
