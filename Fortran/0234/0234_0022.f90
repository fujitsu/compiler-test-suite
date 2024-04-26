module mod01
   type:: ytype
   contains
      procedure :: proc
   end type ytype
contains
   subroutine proc(this)  
     class (ytype), intent(inout) :: this
   end subroutine
end module 

module mod02
   use mod01
contains
      subroutine sub(x)
         use mod01
         type  (ytype):: x
      end subroutine
end module 

program main
   use mod02
   use mod01
      type (ytype) :: var
        call var%proc()

print *,'pass'
end program
