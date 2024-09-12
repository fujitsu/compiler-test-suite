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
    class(*),pointer::ptr
    class(*),pointer::ptr2
  end type
end module

module m2
use m,trg=>trg2,trg2=>trg
  type(ty2)::obj(5) = ty2(trg,trg2)
contains 
subroutine sub
   select type(A=>obj(1)%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>obj(5)%ptr2)
    type is(tty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
    print*,"Pass"
end
end module
use m2
call sub
end
