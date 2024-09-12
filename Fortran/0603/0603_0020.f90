module m   
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
   
  type tar
    type(tty) :: trg
    type(tty):: trg2(5)
    type(ty):: trg3(5)
  end type

  type ty2
    class(ty),pointer::ptr
    class(ty),pointer::ptr2(:)
    class(ty),pointer::ptr3(:)
 end type

  type,extends(ty2)::ty3
    class(ty),pointer::ptr4(:)
    class(ty),pointer::ptr5(:)
  end type
  
  type(tar),target::t1
  type(ty3)::obj(2) = ty3(ty2(t1%trg,t1%trg2,t1%trg2(1:5:2)),t1%trg2 ,t1%trg3(1:5:2))
end module
use m
   select type(A=>obj(1)%ptr)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
   class default
      print*,"122"
    end select 
    select type(A=>obj(1)%ptr2(1))
    type is(tty)
       if(A%ii .ne. 3) print*,"223"
       A%jj =20
   class default
      print*,"124"
    end select 
    select type(A=>obj(1)%ptr3(1))
    type is(tty)
       if(A%jj .ne. 20) print*,"623"
   class default
      print*,"124"
    end select 
    select type(A=>obj(2)%ptr4(2))
    type is(tty)
       if(A%jj .ne.5 ) print*,"423"
   class default
      print*,"124"
    end select 
    select type(A=>obj(2)%ptr5(3))
    type is(ty)
       if(A%ii .ne. 3) print*,"523"
   class default
      print*,"124"
    end select 
    print*,"Pass"
end
