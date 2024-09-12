module m6
contains
subroutine s6( x)
 value:: x
 intent(in)    :: x
write(1,*) x
end
end
use m6
call s6(1.0)
rewind 1
read(1,*) a
if (a/=1) print *,2012
print *,'pass'
end
