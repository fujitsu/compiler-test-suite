module m
contains
subroutine s(x)
character(len=1),value::x
if (x/='2')write(6,*) "NG"
x='1'
end subroutine
end
use m
character y
y='2'
call s(y)
call s('2')
print *,'pass'
end


