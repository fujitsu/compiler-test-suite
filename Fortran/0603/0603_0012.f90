module m   
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,save :: trg
  type ty2
    class(ty),pointer::ptr1
    integer,pointer::ptr2
    class(*),pointer::ptr
  end type
  type(ty),target::t1
  type(ty2)::obj = ty2(NULL(),t1%ii,trg)
end module
use m
   select type(A=>obj%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    if(associated(obj%ptr1).neqv..false.)print*,"901"
    if(associated(obj%ptr2).neqv..true.)print*,"902"
    if(obj%ptr2.ne.3)print*,"903"
    print*,"Pass"
end
