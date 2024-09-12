integer :: arr=4
integer :: b
b = fun(arr,5)       
if(b /= 19) print*,101        
print*,"PASS"
        contains
        elemental function fun(x,y)
        integer, intent(in) :: x
        integer, intent(in) :: y
        integer :: array(y)
        array = [x+1,2,3,4,5]
        fun = array(1) + array(2) + array(3) + array(4) + array(5)
        end function
        end
