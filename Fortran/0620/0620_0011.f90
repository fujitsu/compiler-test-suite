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
       class(*), allocatable, intent(in) :: a

       class(*), allocatable, intent(in) :: b
       type(ty) :: pls
       END function
       END INTERFACE operator(+)

       type cont
         integer::ik
         class(*), allocatable::pptr
         class(*), allocatable::pptr1
       end type

       type(cont),target::pobj
       TYPE(con)::obj(10)
 class(*), pointer                 :: temp
        pobj%ik=2
        allocate(ty::pobj%pptr)
 temp=>      pobj%pptr
 select type(temp)
 type is(ty)
 write(4,*)1001,temp%num
class default
 print *,9999
end select

        allocate(ty::pobj%pptr1)

        allocate(obj(1)%ptr,SOURCE=(pobj%pptr + pobj%pptr1))
        if(obj(1)%ptr%num/=4) print*,501

print *,'pass'

END

function pls(a,b)
 use mod1 
 class(*), allocatable, intent(in) :: a
 class(*), allocatable, intent(in) :: b
 type(ty) :: pls
 select type(a)
 type is(ty)
 write(4,*)2001,a%num
  select type(b)
  type is(ty)
 write(4,*)3001,a%num
   pls%num = a%num + b%num
  endselect
 endselect
END function
