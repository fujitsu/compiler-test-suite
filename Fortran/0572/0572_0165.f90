integer :: arr(5)
integer :: arr2(3)        

if(rank(arr(arr2)) /= 1) print*,"101"        
if(rank(arr(1:3)) /= 1) print*,"102"        
if(rank(arr(1:5:2)) /= 1) print*,"103"        

if(rank(fun()) /= 0) print*, "104"
if(rank(fun2()) /= 1) print*, "105"

print*,"PASS"
        contains
        function fun()
        integer :: fun
        fun = 5
        end function

        function fun2()
        integer :: fun2(3)
        fun2 = (/1,2,3/)
        end function
end        
