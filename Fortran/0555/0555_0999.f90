module mod1
      type ty
      integer(kind=4) :: num=2
      integer(kind=4) :: num1
      end type
end module
 
       use mod1
       TYPE con
       class(ty),POINTER::ptr(:)
       class(ty),POINTER::ptr_1(:)
       END TYPE
 
       INTERFACE OPERATOR(+)
       function pls(a,b)
       import ty
       class(*), allocatable, intent(in) :: a(:)

       class(*), allocatable, intent(in) :: b(:)
       type(ty) :: pls(3)
       END function
       END INTERFACE operator(+)
 
       TYPE(con)::obj(10)
       class(*), allocatable::pptr(:)
       class(*), allocatable::pptr1(:)
        allocate(ty::pptr(3))
        allocate(ty::pptr1(3))
        select type(pptr)
        type is(ty)
          pptr=ty(2,3)
        end select

        select type(pptr1)
        type is(ty)
          pptr1=ty(2,3)
        end select
        allocate(obj(1)%ptr,SOURCE=(pptr + pptr1))
 print*,obj(1)%ptr%num
 
END
 
function pls(a,b)
 use mod1
 class(*), allocatable, intent(in) :: a(:)
 class(*), allocatable, intent(in) :: b(:)
 type(ty) :: pls(3)
 
 select type(a)
 class is(ty)
  select type(b)
  class is(ty)
   pls%num = a%num + b%num
  end select
 end select
END function

