        interface
        function fun()
        integer :: fun(10,10)
        end function
        end interface
call s(fun())
contains
subroutine s(dum)
class(*)::dum(:,:)
 
print*,shape(dum)
end subroutine
end
 
function fun()
        integer :: fun(10,10)
        fun = 10
        end function

