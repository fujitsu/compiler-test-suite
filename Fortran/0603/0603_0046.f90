 module m  
   type ty
    integer :: ii = 3
   end type

   type,extends(ty) :: tty
      integer :: jj = 5
   end type
end module

module m2
use m
   type ty3
     class(ty),pointer :: cptr
   end type
   
   type ty4
     type(ty3)::obj = ty3(NULL())
   end type
  
   type  ty5
     type(ty4),pointer::obj2
   end type
end module

module m3
use m2
  type ty6
    type(ty5),pointer::obj3
    type(ty5),allocatable::obj4
  end type
  type(ty6)::obj6
 end module

 use m3
   call sub()
   contains 
   subroutine sub()
   type(ty5),allocatable::obj7
   type(ty)::ty_obj
   allocate(obj6%obj3)
   allocate(obj6%obj4)
   allocate(obj7)
   allocate(obj6%obj3%obj2)
   allocate(obj6%obj4%obj2)
   allocate(obj7%obj2)
   if(same_type_as(obj6%obj3%obj2%obj%cptr,ty_obj).neqv..TRUE.)print*,"101"
   if(extends_type_of(obj6%obj3%obj2%obj%cptr,ty_obj).neqv..true.)print*,"104"
   if(same_type_as(obj6%obj4%obj2%obj%cptr,ty_obj).neqv..TRUE.)print*,"105"
   if(extends_type_of(obj7%obj2%obj%cptr,ty_obj).neqv..true.)print*,"106"
   print*,"Pass"
   end
   end
