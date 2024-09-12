module mod1
      type ty
      integer(kind=4) :: num=4
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
       class(*), pointer, intent(in) :: a

       class(*), pointer, intent(in) :: b
       type(ty) :: pls
       END function
       END INTERFACE operator(+)
 
       TYPE(con)::obj(10)
        allocate(obj(1)%ptr,SOURCE=(pptr() + pptr1()))
        if(obj(1)%ptr%num==8) print*,'PASS'
 
 contains
 function pptr()
  class(*),pointer::pptr
  allocate(ty::pptr)
 end function
 function pptr1()
  class(*),pointer::pptr1
  allocate(ty::pptr1)
 end function
END
 
function pls(a,b)
 use mod1 
 class(*), pointer, intent(in) :: a
 class(*), pointer, intent(in) :: b
 type(ty) :: pls
 
 select type(a)
 type is(ty)
 selecttype(b)
 type is(ty)
   pls%num = a%num + b%num
 end select
 end select
END function

