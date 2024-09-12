integer :: arr=3,b(3)
b = fun(arr,5)     
if(any(b /= 5))print*,106   
        contains
        elemental impure function fun(x,y)
        integer, intent(in) :: x
        integer, intent(in) :: y
        integer :: array(y)
        if(any(lbound(array) /= [1])) print*,101
        if(any(ubound(array) /= [5])) print*,102
        if(size(array) /= 5) print*,103
        if(any(shape(array) /= [5])) print*,104
        print*,"PASS"
        if(x/= 3)print*,107
        fun = 5
        end function
        end
