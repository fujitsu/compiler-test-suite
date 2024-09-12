integer :: arr(4), arr4(1,2,3,4)
type ty
integer :: a
integer :: b
end type

type(ty) :: obj
arr = (/1,2,3,rank(arr4)/)        
arr(3) = rank(arr4)        
obj%a = rank(arr4)        
obj = ty(1,rank(arr4))
call sub(rank(arr4))                
print*,"PASS"
        contains
        subroutine sub(x)
        integer :: x
        if(x /= 4) print*, "101"
        end subroutine
end
        
