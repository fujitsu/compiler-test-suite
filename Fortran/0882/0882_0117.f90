module mod1
        type ty
        integer :: ii
        end type
end module
use mod1
        interface
        function fun()
        import ty
        type(ty):: fun(10,10)
        end function
        end interface
call s(fun())
contains
subroutine s(dum)
class(ty)::dum(:,:)
 
print*,shape(dum)
print*,dum(1,1)%ii
end subroutine
end
 
function fun()
use mod1
        type(ty) :: fun(10,10)
        fun%ii = 10
        end function

