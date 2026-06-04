IMPLICIT NONE
type x
  integer::x1(2)
end type
type(x),parameter::v=x(1)
type(x)::vv=x(1)
associate (n1 =>v )
associate (n2 =>vv )
 block
  integer ::p2a (  n1%x1(1) )
  integer ::p2aa(  n2%x1(1) )
  integer ::p3a (  v %x1(1) )
  integer ::p3aa(  vv%x1(1) )
 if (n1%x1(1) .ne.1) print *,'NG'
 if (n2%x1(1) .ne.1) print *,'NG'
 if (v %x1(1) .ne.1) print *,'NG'
 if (vv%x1(1) .ne.1) print *,'NG'
 end block
end associate
end associate
print *,'pass'
end
