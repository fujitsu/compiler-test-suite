module m   
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type tar
  type(tty) :: trg
  type(ty) :: trg2
  end type
  type(tar),target::objtar
  type ty2
    class(ty),pointer::ptr=>objtar%trg2
    class(ty),pointer::ptr2=>objtar%trg2
  end type
end module

module m2
use m
 type tyy
  type(ty2)::obj(5) = ty2(objtar%trg2,objtar%trg)
  type(ty2)::obj3(5)
 end type
contains 
subroutine sub2
   type(tyy),pointer::obj1(:)
   allocate(obj1(2))
   select type(A=>obj1(2)%obj(1)%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"121"
    type is(tty)
        print*,"240"
   class default
      print*,"122"
    end select 
    select type(A=>obj1(1)%obj(5)%ptr2)
    type is(tty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
   select type(A=>obj1(2)%obj3(1)%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"125"
    end select 
    select type(A=>obj1(1)%obj3(5)%ptr2)
    type is(ty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"126"
    end select 
end

end module
use m2
call sub
call sub2
    print*,"Pass"
contains 
subroutine sub
   type(tyy),pointer::obj1(:)
   allocate(obj1(2))
   select type(A=>obj1(2)%obj(1)%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"121"
    type is(tty)
        print*,"540"
   class default
      print*,"122"
    end select 
    select type(A=>obj1(1)%obj(5)%ptr2)
    type is(tty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
   select type(A=>obj1(2)%obj3(1)%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"125"
    end select 
    select type(A=>obj1(1)%obj3(5)%ptr2)
    type is(ty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"126"
    end select 
end
end
