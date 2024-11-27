 module m 
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,save :: trg
 end module

module m2
use m
  type ty2
    class(ty),pointer::ptr
  end type

  type ty3
    class(ty),pointer::ptr2=>trg
    type(ty2)::obj(3) = ty2(trg)
  end type

   type ty4
    type(ty3)::obj4(2)
   end type
   type(ty3),allocatable::obj9(:)
end module

module m3
use m2
   type(ty4),pointer::ptrty4
   type(ty3),allocatable::obj3(:)
contains 
subroutine sub2()
  allocate(ptrty4) 
  select type(A=>ptrty4%obj4(1)%obj(1)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>ptrty4%obj4(2)%obj(3)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
    select type(A=>ptrty4%obj4(1)%ptr2)
    type is(tty)
       if(A%ii .ne. 3) print*,"223"
   class default
      print*,"224"
    end select
end
end 
use m3
 call sub()
 call sub2()
   allocate(obj9(5))
   select type(A=>obj9(1)%obj(1)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>obj9(5)%obj(2)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
    select type(A=>obj9(4)%ptr2)
    type is(tty)
       if(A%ii .ne. 3) print*,"223"
   class default
      print*,"224"
    end select 

contains 
subroutine sub()
  allocate(obj3(5))
   select type(A=>obj3(1)%obj(1)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>obj3(5)%obj(2)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
    select type(A=>obj3(4)%ptr2)
    type is(tty)
       if(A%ii .ne. 3) print*,"223"
   class default
      print*,"224"
    end select 
    print*,"Pass"
end 
end
