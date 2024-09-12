integer :: a(5) = [1,2,3,4,5]
if(any(fun(a(1:3)) /= [1,2,3])) print*,101
print*,"PASS"
        contains
        elemental  function fun(x)
        integer,intent(in) :: x
        fun = x
        end function
        end
