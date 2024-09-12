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

  type(tty),target,save :: trg
  type(tty2),target,save :: trg2
  class(ty),pointer::ptr=>trg, ptr2=>trg2
end module
use m
   select type(A=>ptr)
    type is(tty)
       if(A%jj .ne. 5) print*,"121"
   class default
      print*,"122"
    end select 
   select type(A=>ptr2)
    type is(tty2)
       if(A%kk .ne. 6) print*,"123"
   class default
      print*,"124"
    end select 

    print*,"Pass"
end

