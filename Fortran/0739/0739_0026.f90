type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1) :: sss1(2)
end type
type(ty2) :: str
call sub2(   (/(ty1((/1/)),i=1,1)/))
print *,'pass'
contains
subroutine sub2(x)
type (ty1)::x(:)
if (size(x)/=1)write(6,*) "NG"
if (any(x(1)%arr/=1))write(6,*) "NG"
end subroutine
end

