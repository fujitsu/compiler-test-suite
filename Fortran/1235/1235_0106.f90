IMPLICIT NONE
type x
  integer::x1(2)
end type
type xx
  type(x):: a
end type
type(xx),parameter::v=xx(x(1))
type(xx)::vv=xx(x(1))
associate (n1 =>v%a )
associate (n2 =>vv%a )
 block
  integer ::p2a (  n1%x1(1) )
  integer ::p2aa(  n2%x1(1) )
  integer ::p3a (  v%a %x1(1) )
  integer ::p3aa(  vv%a%x1(1) )
 if (n1%x1(1) .ne.1) print *,'NG'
 if (n2%x1(1) .ne.1) print *,'NG'
 if (v%a %x1(1) .ne.1) print *,'NG'
 if (vv%a%x1(1) .ne.1) print *,'NG'
 end block
end associate
end associate
print *,'pass'
end
