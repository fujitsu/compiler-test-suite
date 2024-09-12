module m
type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,save :: trg_tty
end module
use m
block
  type ty2
   class(ty),pointer::ptr_ty
   class(*),pointer::ptr_ty2
  end type
  type ty3
   class(ty),pointer::ptr_ty=>trg_tty
   class(*),pointer::ptr_ty2=>trg_tty
  end type
  type(ty2)::obj(4) = ty2(trg_tty, trg_tty)
  type(ty3)::obj2(4) 
  select type(A=>obj(1)%ptr_ty)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
       A%jj =20
    type is(ty)
      print*,"222"
   class default
      print*,"122"
    end select
    select type(A=>obj(2)%ptr_ty2)
    type is(tty)
       if(A%jj .ne. 20) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"122"
    end select 
  select type(A=>obj2(1)%ptr_ty)
    type is(tty)
       if(A%jj .ne. 20) print*,"121"
       A%jj =30
    type is(ty)
      print*,"222"
   class default
      print*,"122"
    end select
    select type(A=>obj2(2)%ptr_ty2)
    type is(tty)
       if(A%jj .ne. 30) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"122"
    end select
  print*,"Pass"
end block
end
