module m1
use iso_c_binding
contains
subroutine sub
interface
  subroutine ss
  end subroutine
end interface
procedure ( ss ),pointer:: s, x
x=>ss
call c_f_procpointer ( c_funloc( ss ) , s)
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
