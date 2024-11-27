interface
 subroutine proc(x)
  integer x
 end subroutine
 function func(x) result(y)
  integer x,y
 end function
end interface
procedure(proc), pointer :: p
procedure(func), pointer :: pi
p => sub
pi => fnc
i = 0
call p(i)
i=pi(i)
contains
 subroutine sub(x)
  integer x
  x = x + 1
  print *,x
 end subroutine
 function fnc(x) result(y)
  integer x,y
  y=x
 end function
end
