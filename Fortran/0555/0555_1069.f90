module mm
      type ty
      integer(kind=4) :: num
      end type
end module

 use mm 
 
 INTERFACE OPERATOR(+)
 function pls(a,b)
 use mm 
 class(*), pointer, intent(in) :: a
 class(*),pointer, intent(in) :: b
 type(ty) :: pls
 END function
 END INTERFACE operator(+)

 class(ty),POINTER::ptr
 class(*),POINTER::pptr
 class(*),POINTER::pptr1
  allocate(ty::pptr)
  allocate(ty::pptr1)

  select type(pptr)
  type is(ty)
   pptr%num=3
   select type(pptr1)
   type is(ty)
    pptr1%num=4
   end select
  end select
  allocate(ptr,SOURCE=(pptr + pptr1))
  if(ptr%num==7) print*,'PASS'
 
END

function pls(a,b)
use mm 
 
 class(*), pointer, intent(in) :: a
 class(*), pointer, intent(in) :: b
 type(ty) :: pls
 
 select type(a)
 type is(ty)
  select type(b)
  type is(ty)
   pls%num  = a%num  + b%num 
  end select
 end select 
END function

