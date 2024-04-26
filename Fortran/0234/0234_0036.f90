module mod01
   type:: ytype
integer::k
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
      function   sub()
         use mod01
         type  (ytype):: sub
         sub%k=1
      end 
end module 

program main
   use mod02
   use mod01
      type (ytype) :: var
        call var%proc()
var=sub()
if (var%k/=1) print *,1001

print *,'pass'
end program
