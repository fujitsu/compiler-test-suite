  
  implicit none                                              
  procedure(forced), pointer:: funPointer => NULL()
  procedure(forced), pointer:: funPointer1 => forced
  procedure(forced), pointer:: funPointer2 => ideal
  procedure(forced), pointer:: funPointer3 => oseen
  type ty
    procedure(forced), pointer,nopass:: funPointer => NULL()
    procedure(forced), pointer,nopass:: funPointer1 => forced
    procedure(forced), pointer,nopass:: funPointer2 => ideal
    procedure(forced), pointer,nopass:: funPointer3 => oseen
  end type
 
   interface 
     function forced() 
       integer:: forced 
     end function forced 
 
     function ideal() 
       integer:: ideal 
     end function ideal 
 
     function oseen() 
       integer:: oseen 
     end function oseen 
 
   end interface 
  type(ty)::obj(5)
  if(associated(funPointer).neqv..false.)print*,"109"
  if(associated(obj(1)%funPointer).neqv..false.)print*,"109"
  if(associated(obj(1)%funPointer2).neqv..true.)print*,"110"
  if(associated(obj(1)%funPointer3).neqv..true.)print*,"111"
  if(associated(obj(1)%funPointer1).neqv..true.)print*,"112"
  if(funPointer1().ne.10)print*,"101"
  if(funPointer2().ne.20)print*,"102"
  if(funPointer3().ne.30)print*,"103"
  if(obj(1)%funPointer1().ne.10)print*,"101"
  if(obj(2)%funPointer2().ne.20)print*,"102"
  if(obj(3)%funPointer3().ne.30)print*,"103"
  Print *,"PASS"
  end

     function forced() 
       integer:: forced 
        forced =10
     end function forced 
 
     function ideal() 
       integer:: ideal 
       ideal =20
     end function ideal 
 
     function oseen() 
       integer:: oseen
       oseen = 30 
     end function oseen 
