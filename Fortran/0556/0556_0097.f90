module mm
      type ty
      integer(kind=4) :: num=2
      integer(kind=4) :: num1=3
      end type
end module

 use mm

 INTERFACE OPERATOR(+)
 function pls(a,b)
 use mm
 class(*), pointer, intent(in) :: a

 class(*), pointer, intent(in) :: b
 type(ty) :: pls
 END function
 END INTERFACE operator(+)

 type cont
   class(*), pointer    ::pptr
   class(*), pointer    ::pptr1
   integer::kk=0
 end type

 type(ty),allocatable::ptr
 type(cont)::pobj

  allocate(ty::pobj%pptr)
  allocate(ty::pobj%pptr1)

  allocate(ptr,SOURCE=(pobj%pptr + pobj%pptr1))
  if(ptr%num==4) print*,'PASS'

END
 
function pls(a,b)
 use mm 
 class(*), pointer, intent(in) :: a
 class(*),pointer, intent(in) :: b
 type(ty) :: pls
 
 select type(a)
 type is(ty)
  select type(b)
  type is(ty)
   pls%num  = a%num  + b%num 
  end select
 end select 
END function

