    module m1
     type ty
      integer(kind=4) :: num
      integer(kind=4) :: num1
      end type
 
      type, extends(ty):: ty1
      integer(kind=8) :: num2
      end type
 
      type, extends(ty1):: ty2
      integer(kind=8) :: num3
      end type
    end module
    use m1
       TYPE con
       class(ty),allocatable::ptr_1(:)
       END TYPE
 
       INTERFACE OPERATOR(+)
       function pls(a,b)
       import ty1
       import ty
       import ty2
       type(ty1), intent(in) :: a(:)

       type(ty2), intent(in) :: b(:)
       class(ty1), allocatable :: pls(:)
       END function
       END INTERFACE operator(+)
 
       TYPE(con)::obj
       type(ty1), allocatable::pptr(:)
       type(ty2), allocatable::pptr1(:)
       allocate(pptr(3))
       allocate(pptr1(3))
 
       pptr%num = 2
       pptr1%num = 1
       obj = con((pptr + pptr1))
       if(obj%ptr_1(1)%num .NE. 3) then
           print*,'Fail'
       else
           print*,'Pass'
       end if
 
END
 
function pls(a,b)
use m1

     type(ty1), intent(in) :: a(:)
     type(ty2), intent(in) :: b(:)
     class(ty1), allocatable :: pls(:)

    allocate(pls(3))
    pls%num = a%num + b%num
END function

