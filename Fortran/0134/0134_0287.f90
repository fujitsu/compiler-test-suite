module mod
type :: t
      integer :: ix
      procedure(fa),pointer,nopass  :: fw
      procedure(fa),pointer,nopass  :: bw
      procedure(fa),pointer,nopass  :: gw
end type t
abstract interface
   integer(kind=8) function fa(c)
      import t
      type(t),intent(inout) :: c
   end function fa
end interface
end 

subroutine set(c)
  use mod
  type(t),intent(inout) :: c
  interface
   integer(kind=8) function rm(c)
      use mod
      type(t),intent(inout) :: c
   end function rm
  end interface
c%fw=>rm
end subroutine

subroutine rt(c)
use mod
  interface
   integer(kind=8) function rm(c)
      use mod
      type(t),intent(inout) :: c
   end function rm
  end interface
     type(t),intent(inout)        :: c
     integer(kind=8)           :: mem
     mem = 1
     if (c%ix/=1)print *,'error-1'
     if (associated(c%fw))    &
         mem=mem+c%fw(c)
     if (mem/=2)print *,'error-2'
end

   integer(kind=8) function rm(c)
      use mod
      type(t),intent(inout) :: c
      rm=c%ix
   end function rm

use mod
type(t) :: c
c%ix=1
call set(c)
call rt(c)
print *,'pass'
end




