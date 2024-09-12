module m  
   type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type,extends(tty) :: tty2
    integer :: kk = 6
  end type

  type(tty),target,save :: trg_tty
  type(tty2),target,save :: trg_tty2
  type ty1
    class(ty),pointer::ptr_ty
    class(*),pointer::ptr_ty2
  end type
  type(ty1)::obj(2,2) = ty1(trg_tty, trg_tty2)
contains 
function fun()
integer::fun
block
  select type(A=>obj(1,1)%ptr_ty)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"123"
    end select
   select type(A=>obj(2,2)%ptr_ty)
    type is(tty)
       if(A%jj .ne. 5) print*,"124"
    type is(ty)
      print*,"225"
   class default
      print*,"126"
    end select
    select type(A=>obj(1,1)%ptr_ty2)
    type is(tty2)
       if(A%kk .ne. 6) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"123"
    end select
   select type(A=>obj(2,2)%ptr_ty2)
    type is(tty2)
       if(A%jj .ne. 5) print*,"124"
       fun = A%kk
    type is(ty)
      print*,"225"
   class default
      print*,"126"
    end select
end block
end function
end 

module m2
use m
contains 
function fun2()
integer::fun2
block
  select type(A=>obj(1,2)%ptr_ty)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"123"
    end select
   select type(A=>obj(2,1)%ptr_ty)
    type is(tty)
       if(A%jj .ne. 5) print*,"124"
    type is(ty)
      print*,"225"
   class default
      print*,"126"
    end select
    select type(A=>obj(1,2)%ptr_ty2)
    type is(tty2)
       if(A%kk .ne. 6) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"123"
    end select
   select type(A=>obj(2,1)%ptr_ty2)
    type is(tty2)
       if(A%jj .ne. 5) print*,"124"
       fun2 = A%kk
    type is(ty)
      print*,"225"
   class default
      print*,"126"
    end select
end block
end function

end module

use m2
block
  select type(A=>obj(1,1)%ptr_ty)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"123"
    end select
   select type(A=>obj(2,2)%ptr_ty)
    type is(tty)
       if(A%jj .ne. 5) print*,"124"
    type is(ty)
      print*,"225"
   class default
      print*,"126"
    end select
    select type(A=>obj(1,1)%ptr_ty2)
    type is(tty2)
       if(A%kk .ne. 6) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"123"
    end select
   select type(A=>obj(2,2)%ptr_ty2)
    type is(tty2)
       if(A%kk .ne. 6) print*,"124"
    type is(ty)
      print*,"225"
   class default
      print*,"126"
    end select
  print*,"Pass"
  if(fun().ne.6)print*,"803"
  if(fun2().ne.6)print*,"903"
  call sub2()
end block
contains 
subroutine sub2()
block
  select type(A=>obj(1,1)%ptr_ty)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"123"
    end select
   select type(A=>obj(2,2)%ptr_ty)
    type is(tty)
       if(A%jj .ne. 5) print*,"124"
    type is(ty)
      print*,"225"
   class default
      print*,"126"
    end select
    select type(A=>obj(1,1)%ptr_ty2)
    type is(tty2)
       if(A%kk .ne. 6) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"123"
    end select
   select type(A=>obj(2,2)%ptr_ty2)
    type is(tty2)
       if(A%kk .ne. 6) print*,"124"
    type is(ty)
      print*,"225"
   class default
      print*,"126"
    end select
  if(fun().ne.6)print*,"103"
end block
end subroutine
end
