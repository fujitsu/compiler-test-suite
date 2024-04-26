subroutine s1
type a
  integer a(0)
  character(0) b
  integer c
end type
type(a)::v
if (loc(v%a)/= loc(v%b))print *,'e1'
if (loc(v%c)/= loc(v%b))print *,'e2'
end
call s1
print *,'pass'
end

