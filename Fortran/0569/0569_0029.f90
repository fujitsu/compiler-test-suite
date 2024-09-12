integer :: arr(6) = [1,2,3,4,5,6]
if(any(fun(arr(2:5)) .ne. [4,4,4,4])) print*,101
if(any((arr .ne. [1,4,4,4,4,6]))) print*,102
print*,"PASS"
        contains
        impure elemental function fun(x)
        integer, intent(out) :: x
        x = 4
        fun = x
        end function
        end
