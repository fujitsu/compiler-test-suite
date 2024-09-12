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

  type(ty2)::obj = ty2(trg,trg2)
end module
use m
   select type(A=>obj%ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>obj%ptr2)
    type is(ty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 

    print*,"Pass"
end
