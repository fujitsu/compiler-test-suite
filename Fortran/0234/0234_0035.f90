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
contains
      subroutine sub()
         use mod01
         type  (ytype):: x
call s(x)
contains
      subroutine s(x)
         type  (ytype):: x
      end subroutine
      end subroutine
end module 

program main
   use mod02,only:sub
   use mod01
      type (ytype) :: var
        call var%proc()
call sub

print *,'pass'
end program
