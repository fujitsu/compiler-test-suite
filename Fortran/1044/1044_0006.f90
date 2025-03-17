module m1
 integer,private:: i
contains
subroutine foo(j)
i=1
j=i
end subroutine
end
use m1
call foo(j)
if (j/=1)write(6,*) "NG"
print *,'pass'
end

