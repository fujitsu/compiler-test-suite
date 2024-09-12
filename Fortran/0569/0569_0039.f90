integer :: a(5) = [1,2,3,4,5]
if(any(fun(a(1:3)) /= [6,6,6])) print*,101
print*,"PASS"
        contains
        impure elemental  function fun(x)
        integer,intent(out) :: x
        x = 6
        fun = x
        end function
        end
