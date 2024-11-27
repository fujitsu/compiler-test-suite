type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1) :: sss1(2)
end type
type(ty2) :: str

call sub2(   (/(ty1((/1/)),i=1,1)/))
call sub2( (/   ty1((/1/))/))
call sub1(      ty1((/1/)))
call sub(   (/(ty1((/1/)),i=1,2)/))
str=ty2((/(ty1((/1/)),i=1,2)/))
if (any(str%sss1(1)%arr/=1))write(6,*) "NG"
if (any(str%sss1(2)%arr/=1))write(6,*) "NG"
print *,'pass'
contains
subroutine sub(x)
type (ty1)::x(:)
if (any(x(1)%arr/=1))write(6,*) "NG"
if (any(x(2)%arr/=1))write(6,*) "NG"
end subroutine
subroutine sub1(x)
type (ty1)::x
if (any(x%arr/=1))write(6,*) "NG"
end subroutine
subroutine sub2(x)
type (ty1)::x(:)
if (any(x(1)%arr/=1))write(6,*) "NG"
end subroutine
end

