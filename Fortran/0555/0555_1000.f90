module mod1
      type ty
      integer(kind=4) :: num=3
      integer(kind=4) :: num1
      end type
end module
 
       use mod1
       TYPE con
       class(ty),POINTER::ptr(:)
       END TYPE
 
       INTERFACE OPERATOR(+)
       function pls(a,b)
       import ty

       class(*), pointer, intent(in) :: a(:)
       class(*),pointer, intent(in) :: b(:)
       type(ty) :: pls(5)

       END function
       END INTERFACE operator(+)
 
       TYPE(con)::obj(10)
       class(*),POINTER::pptr(:)
       class(*),POINTER::pptr1(:)
        allocate(ty::pptr(5))
        allocate(ty::pptr1(5))
 
        allocate(obj(1)%ptr,SOURCE=(pptr + pptr1))
        print*,obj(1)%ptr%num
 
END
 
function pls(a,b)
 use mod1 
 class(*), pointer, intent(in) :: a(:)
 class(*), pointer, intent(in) :: b(:)
 type(ty) :: pls(5)
 select type(a)
 type is(ty)
  select type(b)
  type is (ty)
   pls%num = a%num + b%num
  end select
 end select
END function

