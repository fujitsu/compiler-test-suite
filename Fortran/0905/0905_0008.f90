integer :: a,b
print*, "PASS"
b = fun(a)
        contains
        pure function fun(x)
        integer,intent(out) :: x
        fun = 5
        end function
        end
