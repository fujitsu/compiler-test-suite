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

module n01
   use mod02,only:sub,ytype
   use mod01
end
subroutine s1
use    n01
      type (ytype) :: var
        call var%proc()
call sub(var)
end
subroutine s2
use    n01,only:sub,ytype
      type (ytype) :: var
        call var%proc()
call sub(var)
end
subroutine s3
use    n01,only:sub,z=>ytype
      type (z) :: var
        call var%proc()
call sub(var)
end

call s1
call s2
call s3
print *,'pass'
end program
