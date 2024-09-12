   type ty
        integer::num
    end type
        
    type,extends(ty) :: ty1
     integer::num1
    end type
        
    type(ty),target ::arr
    type(ty1),target ::arr_ty1
    integer,target::t1=30
    integer,target::t2(3,3)=30
    integer::k(3)=[1,2,3]
    type ty3
      integer,pointer::ptr =>NULL()
      class(ty),pointer:: pt1=>arr
      type(ty),pointer:: pt4=>arr
      class(ty),pointer:: pt3=>NULL()
      class(*),pointer::pt5=>NULL()
      class(ty1),pointer::ptr6=>arr_ty1
      integer,pointer::ptr8=>t1
      integer,pointer,contiguous::ptr9(:,:)=>t2(1:3:1,1:3:1)
      integer,pointer::ptr10(:,:)=>t2
      procedure(),pointer,NOPASS::ptrpro=>NULL()
    end type
   type(ty3)::obj(1,1,1,1)
   integer,pointer::ptr10(:,:)=>t2
   if(associated(obj(1,1,1,1)%ptr).neqv..false.)print*,"101"
   if(associated(obj(1,1,1,1)%pt1).neqv..true.)print*,"102"
   if(associated(obj(1,1,1,1)%pt4).neqv..true.)print*,"103"
   if(associated(obj(1,1,1,1)%pt3).neqv..false.)print*,"103"
   if(associated(obj(1,1,1,1)%pt5).neqv..false.)print*,"103"
   if(associated(obj(1,1,1,1)%ptr6).neqv..true.)print*,"103"
   if(associated(obj(1,1,1,1)%ptr8).neqv..true.)print*,"103"
   if(associated(obj(1,1,1,1)%ptrpro).neqv..false.)print*,"103"
   print*,"PASS"
   end
