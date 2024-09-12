subroutine s1
if (f()/=1)print *,101
if (associated(t()))print *,102
contains
function f() result(r)
integer,pointer :: p
p=>null()
r=1
end function
function t() result(p)
integer,pointer :: p
p=>null()
end function
end
call s1
print *,'pass'
end
