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
       class(ty),POINTER::ptr(:)
       END TYPE
 
       INTERFACE OPERATOR(+)
       function pls(a,b)
       import ty1
       import ty
       import ty2

       type(ty1), pointer, intent(in) :: a(:)
       type(ty1), pointer, intent(in) :: b(:)
       type(ty1), pointer :: pls(:)

       END function
       END INTERFACE operator(+)
 
       TYPE(con)::obj
       type(ty1),POINTER::pptr(:)
       type(ty1),POINTER::pptr1(:)

       allocate(pptr(3), pptr1(3))
       pptr%num = 4
       pptr1%num = 2

       obj = con(pptr+pptr1)
       if(obj%ptr(1)%num .NE. 6) then
           print*,'Fail'
       else
           print*,'Pass'
       end if 
END
 
function pls(a,b)
    use m1
    type(ty1), pointer, intent(in) :: a(:)
    type(ty1), pointer, intent(in) :: b(:)
    type(ty1), pointer :: pls(:)

    allocate(pls(3))
    pls%num = a%num + b%num
END function

