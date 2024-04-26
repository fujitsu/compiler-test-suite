module mod01
   type:: ytype
   contains
      procedure :: wait
   end type ytype
contains
   subroutine wait(this)  
     class (ytype), intent(inout) :: this
   end subroutine
end module 

module mod02
   interface
      subroutine sub(x)
         use mod01
         type  (ytype):: x
      end subroutine
   end interface
end module 

module mod03
   use mod02
   use mod01
end
program main
use mod03
      type (ytype) :: var
        call var%wait()

print *,'pass'
   end
