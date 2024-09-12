module m   
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,save :: trg
  type ty2
    class(ty),pointer::ptr
  end type

  type(ty2)::obj = ty2(trg)
end module
use m
   select type(A=>obj%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    print*,"Pass"
end
