module m   
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,save :: trg
  type(ty),target,save :: trg2
  type ty2
    class(ty),pointer::ptr
    class(ty),pointer::ptr2
  end type

  type(ty2)::obj(1) = ty2(trg,trg2)
end module
use m
   select type(A=>obj(1)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>obj(1)%ptr2)
    type is(ty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
    print*,"Pass"
end
