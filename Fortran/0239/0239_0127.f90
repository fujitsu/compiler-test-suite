subroutine s2
type x
integer x1
integer,dimension(-5:-1,-4:-1)::a
end type
type y
 integer::y1
 type(x)::y2
end type
type(y):: v
v%y2%a=1
associate( p=>v%y2%a)
  if (any(lbound(p)/=[-5,-4]))print *,101
  if (any(lbound(v%y2%a)/=[-5,-4])) print *,102
  if (any(ubound(p)/=-1))print *,103
  if (any(ubound(v%y2%a)/=-1)) print *,104
  if (p(-5,-4)/=1) print *,105,p(-5,-4)
  if (p(-1,-1)/=1) print *,106,p(-1,-1)
end associate
end
call       s2
print *,'pass'
end
