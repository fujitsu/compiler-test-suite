module mod1
      type ty
      integer(kind=4) :: num=3
      integer(kind=4) :: num1=0
      end type
end module

       use mod1 
       TYPE con
        class(ty),POINTER::ptr
       END TYPE
 
       INTERFACE OPERATOR(+)
       function pls(a,b)
       import ty
       class(*), pointer, intent(in) :: a
       class(*),pointer, intent(in) :: b
       type(ty) :: pls

       END function
       END INTERFACE operator(+)
 
       TYPE(con)::obj(10)
       type cont
        class(*),POINTER::pptr
        class(*),POINTER::pptr1
        integer::k=0
       end type

       type(cont)::pobj
        allocate(ty::pobj%pptr)
        allocate(ty::pobj%pptr1)
 
        allocate(obj(1)%ptr,SOURCE=(pobj%pptr + pobj%pptr1))
        if(obj(1)%ptr%num==6) print*,'PASS'
 
END
 
function pls(a,b)
 use mod1
 class(*), pointer, intent(in) :: a
 class(*), pointer, intent(in) :: b
 type(ty) :: pls
 
 select type(a)
 class is(ty)
  select type(b)
  class is(ty)
   pls%num = a%num + b%num
  end select
 end select
END function

