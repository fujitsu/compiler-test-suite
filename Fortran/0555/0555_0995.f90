module mod1
      type ty
      integer(kind=4) :: num=2
      integer(kind=4) :: num1=3
      end type
end module
       use mod1 
       TYPE con
       class(ty),POINTER::ptr
       END TYPE
 
       INTERFACE OPERATOR(+)
       function pls(a,b)
       import ty
       class(*), allocatable, intent(in) :: a

       class(*), allocatable, intent(in) :: b
       type(ty) :: pls
       END function
       END INTERFACE operator(+)
 
       TYPE(con)::obj(10)
       class(*), allocatable::pptr
       class(*), allocatable::pptr1
        allocate(ty::pptr)
        allocate(ty::pptr1)
        select type(pptr)
        type is(ty)
         pptr%num = 3
        end select
        allocate(obj(1)%ptr,SOURCE=(pptr + pptr1))
        if(obj(1)%ptr%num==5) print*,'PASS'
 
END
 
function pls(a,b)
 use mod1
 class(*), allocatable, intent(in) :: a
 class(*), allocatable, intent(in) :: b
 type(ty) :: pls
 
 SELECT tYPE(a)
 type is(ty)
  select type(b)
  class is(ty)
   pls%num = a%num + b%num
  end select
 end select
END function

