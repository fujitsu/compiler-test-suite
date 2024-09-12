   type ty
    integer :: ii = 3
   end type

   type,extends(ty) :: tty
      integer :: jj = 5
   end type
   type ty3
     class(ty),pointer :: cptr
   end type
   
   type ty4
     type(ty3)::obj = ty3(NULL())
   end type
  
   type  ty5
     type(ty4),pointer::obj2
   end type
   type(ty5),pointer::obj3
   type(ty5),allocatable::obj4
    type(ty)::ty_obj
   call sub()
   contains 
   subroutine sub()
   allocate(obj3)
   allocate(obj4)
   allocate(obj3%obj2)
   allocate(obj4%obj2)
   if(same_type_as(obj3%obj2%obj%cptr,ty_obj).neqv..TRUE.)print*,"101"
   if(extends_type_of(obj3%obj2%obj%cptr,ty_obj).neqv..true.)print*,"104"
   if(same_type_as(obj4%obj2%obj%cptr,ty_obj).neqv..TRUE.)print*,"105"
   if(extends_type_of(obj4%obj2%obj%cptr,ty_obj).neqv..true.)print*,"106"
   print*,"PASS"
    end
    end

