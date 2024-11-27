call s1(f())
call s1(f())
print *,'pass'
contains
function   f()
f=2.
end function
subroutine s1(x)
real,value,optional::x
if (abs(x-2.)>0.001)write(6,*) "NG"
end subroutine
end

