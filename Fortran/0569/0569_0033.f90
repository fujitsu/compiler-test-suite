integer :: a = 5,b
b = fun(a)
if(b /= 5) print*,101
print*,"PASS"
        contains
        pure function fun(x)
        integer , intent(in) :: x
        fun = x
        end function
        end
