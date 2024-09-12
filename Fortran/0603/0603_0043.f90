   type ty
    integer :: ii = 3
   end type

   type,extends(ty) :: tty
      integer :: jj = 5
   end type
   type ty3
     class(ty),pointer :: cptr
     class(tty),pointer :: cptr2
   end type
   
   type ty4
     type(ty3)::obj = ty3(NULL(),NULL())
   end type
   type(ty4),pointer::obj2
   type(ty4),allocatable::obj3
   type(ty)::ty_obj
   type(tty)::tty_obj
   allocate(obj2)
   allocate(obj3)
    if(same_type_as(obj2%obj%cptr,ty_obj).neqv..TRUE.)print*,"101"
    if(same_type_as(obj2%obj%cptr2,tty_obj).neqv..true.)print*,"102"
    if(extends_type_of(obj2%obj%cptr2,obj2%obj%cptr).neqv..true.)print*,"103"
    if(extends_type_of(obj2%obj%cptr2,ty_obj).neqv..true.)print*,"104"
    print*,"Pass"
    end

