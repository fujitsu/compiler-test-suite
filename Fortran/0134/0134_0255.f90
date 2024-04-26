subroutine s1
interface
character(1) function f()
end function
end interface
if (f()/='1')print *,102
call x(f)
end
subroutine x(d)
character(1),external::d
if (d()/='1')print *,101
end
character(1) function f()
f='1'
end
call s1
print *,'pass'
end
