module m   
type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type

  type(tty),target,save :: trg
  type ty2
     class(ty),pointer::ptr=>trg
  end type
  type(ty2),allocatable::obj
  type(ty2),pointer::obj2
end module
use m
  allocate(obj)
  allocate(obj2)
  select type(A=>obj%ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
   class default
      print*,"122"
    end select
   select type(A=>obj2%ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
   class default
      print*,"122"
    end select
    print*,"Pass"
end

