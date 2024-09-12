module m1
contains
subroutine s1(c,x)
character(*):: c
logical,optional:: x
integer::k=999
call execute_command_line( c , wait=x , cmdstat=k )
if (k/= 0 ) print *,1001
end subroutine
end
use m1
call s1("")
print *,'pass'
end

