module mod1
      type ty
      integer(kind=4) :: num=1
      integer(kind=4) :: num1=2
      end type
 
      type, extends(ty):: ty1
      integer(kind=8) :: num2=3
      end type
 
      type, extends(ty1):: ty2
      integer(kind=8) :: num3=4
      end type
end module

       use mod1 
       TYPE con
       class(ty),POINTER::ptr
       END TYPE
 
       INTERFACE OPERATOR(+)
       function pls(a,b)
       import ty1
       import ty
       import ty2
       class(ty), intent(in) :: a
       class(ty), intent(in) :: b
       type(ty1) :: pls
       END function
       END INTERFACE operator(+)

       type(ty)::ap
       type(ty)::ap1

       call subcheck(ap,ap1)

contains 
subroutine subcheck(pptr,pptr1)
       TYPE(con)::obj(10)
       class(ty)::pptr
       class(ty)::pptr1
 
        pptr%num = 30
        pptr1%num = 40
        allocate(obj(1)%ptr,SOURCE=(pptr + pptr1))
        if(obj(1)%ptr%num==70) print*,'pass'
end subroutine
 
END
 
function pls(a,b)
 use mod1
 class(ty), intent(in) :: a
 class(ty), intent(in) :: b
 type(ty1) :: pls
 
 pls%num = a%num + b%num
END function

