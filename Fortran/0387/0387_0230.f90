interface
 subroutine proc(x)
  integer x
 end subroutine
 subroutine sub(x)
  integer x
 end subroutine
 function func(x) result(y)
  integer x,y
 end function
end interface
procedure(proc), pointer :: p
procedure(func), pointer :: pf
p => proc
pf => func
call p(i)
i=pf(1)
if (i.ne.1) print *,'fail'

print *,'pass'

end

subroutine proc(x)
 integer x
 x=1
end subroutine
subroutine sub(x)
 integer x
 x=1
end subroutine
function func(x) result(y)
 integer x,y
 y=x
end function
