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
   end type
 contains
 subroutine sub
    type(ty2)::obj2(2)
    select type(A=>obj2(1)%ptr)
     type is(ty)
        if(A%ii .ne. 3) print*,"121"
     type is(tty)
         print*,"tty"
    class default
       print*,"122"
     end select
     print*,"Pass"
 end
 end module
 use m
 call sub
 end

