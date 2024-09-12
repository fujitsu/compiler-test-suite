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
end module

       use mm 
       TYPE con
       class(ty),POINTER::ptr
       class(ty),POINTER::ptr_1(:)
       END TYPE
 
       INTERFACE OPERATOR(+)
       function pls(a,b)
       use mm 
       class(ty), intent(in) :: a

       class(ty), intent(in) :: b
       type(ty1) :: pls
       END function
       END INTERFACE operator(+)

       type(ty1)::ap
       type(ty2)::ap1

       call subcheck(ap,ap1)

contains 
subroutine subcheck(pptr,pptr1)
       TYPE(con)::obj(10)
       type(ty1)::pptr
       type(ty2)::pptr1
 
        pptr%num = 30
        pptr1%num = 40
        allocate(obj(1)%ptr,SOURCE=(pptr + pptr1))
        if(obj(1)%ptr%num==70) print*,'PASS'
end subroutine
 
END
 
function pls(a,b)
 use mm
 class(ty), intent(in) :: a
 class(ty), intent(in) :: b
 type(ty1) :: pls
 
 pls%num = a%num + b%num
END function

