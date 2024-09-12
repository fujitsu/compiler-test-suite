 module m
 intrinsic AINT
 
 interface
   function AINT2(X)
    REAL,INTENT(IN)::X
    REAL::AINT2
  end function
  
 end interface
 type ty
   procedure(AINT2),pointer,nopass:: ptr1
 end type
 end module
 use m
 type(ty)::obj(3) = [ty(AINT2),ty(AINT),ty(NULL())]
  if(associated(obj(1)%ptr1) .eqv. .false.)print*,"111"
  if(associated(obj(2)%ptr1) .eqv. .false.)print*,"112"
  if(associated(obj(3)%ptr1) .eqv. .true.)print*,"113"
  if(obj(1)%ptr1(10.0).ne.40.0)print*,"103"
  if(obj(2)%ptr1(10.0).ne.10.0)print*,"104"
 print*,"pass"
 end
   function AINT2(X)
    REAL,INTENT(IN)::X
    REAL::AINT2
    AINT2 =40.0
    
  end function
