module m   
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,save :: trg
  type(ty),target,save :: trg2
end module
module m2
use m
type ty2
  class(ty),pointer::ptr=>trg
  class(ty),pointer::ptr2=>trg2
end type
contains 
subroutine sub
    type(ty2),allocatable::obj
    allocate(obj)
   select type(A=>obj%ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
       A%jj =15
   class default
      print*,"122"
    end select 
    select type(A=>obj%ptr2)
    type is(ty)
       if(A%ii .ne.3) print*,"123"
   class default
      print*,"124"
    end select 
    print*,"Pass"
end 
function  fun()
   integer::fun
    type(ty2),pointer::obj=>NULL()
    allocate(obj)
   select type(A=>obj%ptr)
    type is(tty)
       if(A%jj .ne. 15) print*,"121"
       A%jj =35
   class default
      print*,"122"
    end select 
    select type(A=>obj%ptr2)
    type is(ty)
       if(A%ii .ne.3) print*,"123"
   class default
      print*,"124"
    end select 
    fun =35
end
end module
use m2
call sub
if(fun().ne.35)print*,"190"
end
