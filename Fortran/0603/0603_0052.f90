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
   class(*),pointer::ptr_ty=>trg_tty
  select type(A=>ptr_ty)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"122"
    end select
  print*,"Pass"
end block
end

