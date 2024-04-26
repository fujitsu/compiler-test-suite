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

module n01
   use mod01
   use mod02,only:sub,ytype
end
subroutine s1
use    n01
      type (ytype) :: var
        call var%proc()
call sub()
end
subroutine s2
use    n01,only:sub,ytype
      type (ytype) :: var
        call var%proc()
call sub()
end
subroutine s3
use    n01,only:sub,z=>ytype
      type (z) :: var
        call var%proc()
call sub()
end

call s1
call s2
call s3
print *,'pass'
end program
