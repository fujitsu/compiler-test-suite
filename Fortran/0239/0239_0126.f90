subroutine s2
type x
integer x1
integer,dimension(-5:-1,-4:-1)::a,b,c
end type
type y
 integer::y1
 type(x)::y2
end type
type(y):: v
v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a)
  if (any(ubound(p)/=-1))print *,101
  if (any(ubound(v%y2%a)/=-1)) print *,102
end associate
end
call       s2
print *,'pass'
end
