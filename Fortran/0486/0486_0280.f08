integer :: ii(2)

ii = 2

call sub(ii)
print *, "pass"
contains
        subroutine sub(dmy1)
        DIMENSION :: dmy1(2)
        integer,value :: dmy1
        dmy1 = 1
        end subroutine
end
