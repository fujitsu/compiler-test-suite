subroutine s1
integer a(2)
a=f()
if (any(a/=1))print *,101
contains
function f() result(r)
integer,pointer:: r(:)
allocate(r(2))
r=1
end function
end
call s1
print *,'pass'
end

