module mod01
   type:: ytype
   contains
      procedure :: proc
   end type ytype
private
public::ytype
contains
   subroutine proc(this)  
     class (ytype), intent(inout) :: this
   end subroutine
end module 

module mod02
private
public::sub
contains
      subroutine sub(x)
         use mod01
         type  (ytype):: x
      end subroutine
end module 

module n01
   use mod02
   use mod01
private
public::sub,ytype
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
subroutine s4
use    n01
      type (ytype) :: var
        call var%proc()
call sub(var)
end
subroutine s5
use    n01,z=>ytype
      type (z) :: var
        call var%proc()
call sub(var)
end

call s1
call s2
call s3
call s4
call s5
print *,'pass'
end program
