block
 type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,save :: trg_tty
  class(ty),pointer::ptr_ty=>trg_tty

  type ty3
    class(ty),pointer::ptr_ty=>trg_tty
    class(*),pointer::ptr_ty2=>trg_tty
  end type
  type(ty3)::obj 
  select type(A=>ptr_ty)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"122"
    end select 
  select type(A=>obj%ptr_ty)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
    type is(ty)
      print*,"232"
   class default
      print*,"142"
    end select
  print*,"Pass"
end block
end

