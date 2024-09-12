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
   pptr%num=3
   select type(pptr1)
   type is(ty)
    pptr1%num=4
   end select
  end select

  allocate(ptr,SOURCE=(pptr + pptr1))
  print*,ptr%num

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
   pls%num  = a%num  + b%num 
  end select
 end select 
END function

