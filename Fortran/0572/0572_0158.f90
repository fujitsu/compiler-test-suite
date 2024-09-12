integer :: arr(0),arr1(2),arr2(2,3)
call sub(arr, arr1, arr2)        
        contains
        subroutine sub(x,y,z)
        integer :: x(*) ,y(*) ,z(1,*)
        if(rank(x) /= 1) print*, "101"
        if(rank(y) /= 1) print*, "102"
        if(rank(z) /= 2) print*, "103"
        print*, "PASS"
        end subroutine
end        

