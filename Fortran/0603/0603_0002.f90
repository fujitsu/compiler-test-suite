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
use m,trg=>trg2,trg2=>trg
  type ty2
    class(ty),pointer::ptr
    class(ty),pointer::ptr2
  end type
  class(ty),pointer::ptr=>trg
  class(ty),pointer::ptr2=>trg2
  type(ty2)::obj(1) = ty2(trg,trg2)
end module
use m2
   select type(A=>obj(1)%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>obj(1)%ptr2)
    type is(tty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
  call sub
    print*,"Pass"
  contains 
  subroutine sub
   select type(A=>ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>ptr2)
    type is(tty)
       if(A%jj .ne. 5) print*,"123"
   class default
      print*,"124"
    end select 
  end 
end
