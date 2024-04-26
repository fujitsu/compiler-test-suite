subroutine s1
type x
  integer x1
  character(:),pointer::x2
  character(:),pointer::x3(:)
end type
type (x)::w
allocate(character(2)::w%x2)
w%x2(:2)='xy'
if (w%x2/='xy')print *,102
end
call s1
print *,'pass'
end
