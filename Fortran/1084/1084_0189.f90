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
    class(ty),pointer::ptr!=>trg
    class(ty),pointer::ptr2!=>trg
  end type
  type ty5
    class(ty),pointer::ptr!=>trg
  end type

  type(ty2)::obj(1) = ty2(trg,trg2)
  type(ty2)::obj4(1)! = ty2(trg,trg2)
   type ty3
    type(ty5)::obj(1) = ty5(trg)
    type(ty5)::obj2(1) = ty5(trg2)
  end type
   type(ty3)::obj2(2)
end module
use m
   select type(A=>obj(1)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
      select type(A=>obj(1)%ptr)
       type is(tty)
         if(A%ii .ne. 3) print*,"122"
         obj4 = [ty2(A,A)]
         select type(A=>obj4(1)%ptr2)
           type is(tty)
           if(A%ii .ne. 3) print*,"123"
      end select 
      end select 
   class default
      print*,"122"
    end select 
    select type(A=>obj(1)%ptr2)
    type is(ty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select  
  select type(A=>obj2(2)%obj(1)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>obj2(2)%obj2(1)%ptr)
    type is(ty)
       if(A%ii .ne. 3) print*,"123"
   class default
      print*,"124"
    end select 
    print*,"Pass"
end
