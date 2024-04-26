subroutine s1
type x
  integer x1
  character(2)::x2
end type
type (x)::w
w%x2(:2)='xy'
if (w%x2/='xy')print *,102
n=2
w%x2(:n)='xy'
if (w%x2/='xy')print *,102
end
call s1
print *,'pass'
end
