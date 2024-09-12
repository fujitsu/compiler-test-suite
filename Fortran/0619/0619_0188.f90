subroutine s1
type x
  integer x1
  character(:),pointer::x2
  character(:),pointer::x3(:)
end type
type (x)::v(2)

allocate(character(2)::v(2)%x3(3))
n2=2
n3=3
v(n2)%x3(1:n3)='xy'
if (any(v(n2)%x3(1:n3)/='xy'))print *,161
v(n2)%x3(1:n3)(:)='xy'
end
call s1
print *,'pass'
end

