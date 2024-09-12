module mod01
   implicit none
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
   implicit none
   interface
      subroutine sub(x)
         use mod01
         type  (ytype):: x
      end subroutine
   end interface
end module 

   use mod02
   use mod01
      type (ytype) :: ptr
        call ptr%wait()

print *,'pass'
   end
