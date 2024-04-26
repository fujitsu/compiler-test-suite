module mod
type :: t
      integer :: ix
      procedure(fu),pointer,nopass  :: fw
      procedure(fu),pointer,nopass  :: bw
      procedure(fu),pointer,nopass  :: gw
end type t
abstract interface
   integer(kind=8) function fu(zzz)
      import t
      type(t),intent(inout) :: zzz
   end function fu
end interface
end 

subroutine set(zzz)
  use mod
  type(t),intent(inout) :: zzz
  interface
   integer(kind=8) function rr(zzz)
      use mod
      type(t),intent(inout) :: zzz
   end function rr
  end interface
zzz%fw=>rr
end subroutine

subroutine rt(zzz)
use mod
     type(t),intent(inout)        :: zzz
     integer(kind=8)           :: mem
     mem = 1
      if (zzz%ix/=1)print *,'error-1'
     if (associated(zzz%fw))    &
         mem=mem+zzz%fw(zzz)
     if (mem/=2)print *,'error-2'
end

   integer(kind=8) function rr(zzz)
      use mod
      type(t),intent(inout) :: zzz
      rr=zzz%ix
   end function rr

use mod
type(t) :: zzz
zzz%ix=1
call set(zzz)
call rt(zzz)
print *,'pass'
end




