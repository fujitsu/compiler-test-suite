module m   
  type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
   
  type(tty),target :: trg
  type(tty),target :: trg2(5)
  type(ty),target  :: trg3(5)

  type ty2
    class(ty),pointer::ptr
    class(ty),pointer::ptr2(:)
    class(*),pointer::ptr3(:)
  end type

  type,extends(ty2)::ty3
    class(ty),pointer::ptr4(:)
    class(*),pointer::ptr5(:)
    integer::ll =30
  end type
  
  type(ty3),target::obj(2) = ty3(ty2(trg,trg2,trg2(1:5:2)),trg2 ,trg3(1:5:2))
  class(ty2),pointer::ptr7 =>obj(1)
  class(*),pointer::ptr8 =>obj(1)

  contains 
    subroutine sub()
    call sub2()
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
    select type(A=>ptr7)
    type is(ty3)
       if(A%ll.ne.30)print*,"901"
   class default
      print*,"124"
    end select
    select type(A=>ptr8)
    type is(ty3)
       if(A%ll.ne.30)print*,"901"
   class default
      print*,"124"
    end select
    end 
  
end module
use m
   call sub()
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
    select type(A=>ptr7)
    type is(ty3)
       if(A%ll.ne.30)print*,"901"
   class default
      print*,"124"
    end select
    select type(A=>ptr8)
    type is(ty3)
       if(A%ll.ne.30)print*,"901"
   class default
      print*,"124"
    end select
    print*,"PASS"
end

subroutine sub2()
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
    select type(A=>ptr7)
    type is(ty3)
       if(A%ll.ne.30)print*,"901"
   class default
      print*,"124"
    end select
    select type(A=>ptr8)
    type is(ty3)
       if(A%ll.ne.30)print*,"901"
   class default
      print*,"124"
    end select
end
