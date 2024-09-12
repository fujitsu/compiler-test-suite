module mod
        type ty
        integer :: ii
        end type
end module

use mod
        interface
        function fun()
        import ty
        type(ty):: fun(10,10)
        end function
        end interface
        type(ty):: arr(10,20)
        arr(10,20)%ii = 4
call s(fun(),arr)
contains
subroutine s(dum1,dum2)
class(ty)::dum1(:,:)
class(ty)::dum2(10,20)
 
print*,shape(dum1)
print*,dum1(1,1)%ii
print*,dum2(10,20)%ii
end subroutine
end
 
function fun()
use mod
        type(ty) :: fun(10,10)
        fun%ii = 10
        end function

