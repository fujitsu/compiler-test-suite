subroutine s1
type x
  integer x1
  character(2)::x2
  character(2)::x3(3)
end type
type (x)::w
w%x3(:3)(1:2)='xy'
if (any(w%x3/='xy'))print *,104
w%x3(:3)='xy'
if (any(w%x3/='xy'))print *,103
w%x2(:2)='xy'
if (w%x2/='xy')print *,102
end
call s1
print *,'pass'
end
