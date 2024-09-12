module mod1
      type ty
      integer(kind=4) :: num=2
      integer(kind=4) :: num1
      end type
end module
 
       use mod1
       TYPE con
       class(ty),POINTER::ptr
       class(ty),POINTER::ptr_1(:)
       END TYPE
 
       INTERFACE OPERATOR(+)
       function pls(a,b)
       import ty
       class(*), intent(in) :: a

       class(*), intent(in) :: b
       type(ty) :: pls
       END function
       END INTERFACE operator(+)

       type(ty)::ap
       type(ty)::ap1

       call subcheck(ap,ap1)

contains 
subroutine subcheck(pptr,pptr1)
       TYPE(con)::obj(10)
       class(*)::pptr
       class(*)::pptr1
 
        allocate(obj(1)%ptr,SOURCE=(pptr + pptr1))
        if(obj(1)%ptr%num==4) print*,'PASS'
end subroutine
 
END
 
function pls(a,b)
 use mod1 
 class(*), intent(in) :: a
 class(*), intent(in) :: b
 type(ty) :: pls
 
 select type(a)
 type is(ty)
  select type(b)
  class is(ty)
   pls%num = a%num + b%num
  end select
 end select
END function

