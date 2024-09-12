module m1
use iso_c_binding
contains
subroutine sub
interface
  subroutine ss
  end subroutine
end interface
procedure ( ss ),pointer:: s, x
type y
 integer:: y1
 procedure ( ss ),nopass,pointer::  z
end type
type(y):: v
v%z=>ss
call c_f_procpointer ( c_funloc( v%z ) , s)
call s 
end
end
use m1
call sub
rewind 1
read(1,*) n
if (n/=100) print *,101
print *,'pass'
end

  subroutine ss
write(1,*) 100
  end subroutine
