module m1
use iso_c_binding
contains
subroutine sub
procedure ( ss ),pointer:: s
call c_f_procpointer ( c_funloc( ss ) , s)
call s 
end
  subroutine ss
write(1,*) 100
  entry xxx() bind(c)
  end subroutine
end
use m1
call sub
rewind 1
read(1,*) n
if (n/=100) print *,101
print *,'pass'
end
