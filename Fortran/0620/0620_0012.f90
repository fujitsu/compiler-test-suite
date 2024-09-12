module mod1
      type ty
      integer(kind=4) :: num=2
      integer(kind=4) :: num1
      end type
end module
       use mod1 

       type cont
         integer::ik
         class(*), allocatable::pptr
         class(*), allocatable::pptr1
       end type

       type(cont),target::pobj
 class(*), pointer                 :: temp
         class(*), allocatable::xxxx

        allocate(ty::xxxx)
 select type(xxxx)
 type is(ty)
 if (xxxx%num/=2)print *,8888,xxxx%num
 end select

        allocate(ty::pobj%pptr)
 temp=>      pobj%pptr
 select type(temp)
 type is(ty)
 if (temp%num/=2)print *,7777,temp%num
class default
 print *,9999
end select

print *,'pass'

END
