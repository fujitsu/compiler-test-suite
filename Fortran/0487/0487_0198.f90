module m1
use iso_c_binding
interface
  subroutine ss
  end subroutine
end interface
contains
subroutine sub(s,x)
procedure ( ss ),pointer:: s
procedure (  )::  x
call c_f_procpointer ( c_funloc( x ) , s)
call s 
end
subroutine sssx
procedure ( ss ),pointer:: s, x
x=>ss
call sub(s,x)
end
end
use m1
call sssx
rewind 1
read(1,*) n
if (n/=100) print *,101
print *,'pass'
end

  subroutine ss
write(1,*) 100
  end subroutine
