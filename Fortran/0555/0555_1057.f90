module mm
     type ty
      integer(kind=4) :: num=0
      integer(kind=4) :: num1=0
      end type
 
      type, extends(ty):: ty1
      integer(kind=8) :: num2=0
      end type
 
      type, extends(ty1):: ty2
      integer(kind=8) :: num3=0
      end type
 
       TYPE con
       class(ty),POINTER::ptr
       class(ty),POINTER::ptr_1(:)
       END TYPE
end module
 
       use mm
       INTERFACE OPERATOR(+)
       function pls(a,b)
       use mm
       class(ty), intent(in) :: a

       class(ty), intent(in) :: b
       type(ty1) :: pls
       END function
       END INTERFACE operator(+)
 
       type cont
         type(ty1)::pptr
         type(ty1)::pptr1
       end type

       type(cont)::pobj
       TYPE(con)::obj(10)
 
        pobj%pptr%num = 30
        pobj%pptr1%num = 40
        allocate(obj(1)%ptr,SOURCE=(pobj%pptr + pobj%pptr1))
        if(obj(1)%ptr%num==70) print*,'PASS'
 
END
 
function pls(a,b)
 use mm
 class(ty), intent(in) :: a
 class(ty), intent(in) :: b
 type(ty1) :: pls
 
 pls%num = a%num + b%num
END function

