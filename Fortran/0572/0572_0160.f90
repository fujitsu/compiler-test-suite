integer :: a, b, c
a = 3
b = 5
c = 10
call sub(a,b,c)
        contains
        subroutine sub(x,y,z)
        integer :: x,y,z
        integer :: arr(x), arr2(x,y), arr3(x,y,z)

        if(rank(arr) /= 1) print*, "101"
        if(rank(arr2) /= 2) print*, "102"
        if(rank(arr3) /= 3) print*, "103"

        print*, "PASS"
        end subroutine
        end

