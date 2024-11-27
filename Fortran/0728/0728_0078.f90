module mod
external ext_sub
contains
   subroutine mod_sub(dum_proc)
   interface
      subroutine dum_proc(arg)
      integer, intent(inout) :: arg
      end subroutine dum_proc
   end interface
   call dum_proc(ii);if (ii/=1)write(6,*) "NG"
   end subroutine mod_sub
end module mod

program whatever
use mod
call mod_sub(ext_sub)
print *,'pass'
end program whatever
      subroutine ext_sub(arg)
      integer, intent(inout) :: arg
      arg=1
      end subroutine 
