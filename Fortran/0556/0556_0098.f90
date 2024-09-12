module mm
type ty
 integer(kind=4) :: num
end type
end module

 use mm

 INTERFACE OPERATOR(+)
 function pls(a,b)
 use mm
 class(*), allocatable, intent(in) :: a(:)

 class(*), allocatable, intent(in) :: b(:)
 type(ty) :: pls(3)
 END function
 END INTERFACE operator(+)

 class(ty),POINTER::ptr(:)
 class(*), allocatable::pptr(:)
 class(*), allocatable::pptr1(:)
  allocate(ty::pptr(3))
  allocate(ty::pptr1(3))

  select type(pptr)
  type is(ty)
   pptr(1)%num=3
   select type(pptr1)
   type is(ty)
    pptr1(1)%num=4
   end select
  end select

  allocate(ptr,SOURCE=(pptr + pptr1))
  print*,ptr%num,'pass'

END

function pls(a,b)
 use mm
 
 class(*), allocatable, intent(in) :: a(:)
 class(*), allocatable, intent(in) :: b(:)
 type(ty) :: pls(3)
 
 select type(a)
 type is(ty)
  select type(b)
  type is(ty)
   pls(1)%num  = a(1)%num  + b(1)%num 
   pls(2)%num  = a(1)%num  + b(1)%num 
   pls(3)%num  = a(1)%num  + b(1)%num 
  end select
 end select 
END function

