IMPLICIT NONE
type x
  integer::x1(1)
end type
type(x),parameter::v=x(1)
type(x)::vv=x(1)
type(x),parameter::r(1)=x(1)
type(x)::rr(1)=x(1)
associate (n1 =>v )
associate (n2 =>vv )
associate (n3 =>r(1) )
associate (n4 =>rr(1) )
associate (n5 =>r )
associate (n6 =>rr )
 block
  integer ::p2a (  n1%x1(1) )
  integer ::p2aa(  n2%x1(1) )
  integer ::p3a (  v %x1(1) )
  integer ::p3aa(  vv%x1(1) )
  integer ::p4a (  size(n1%x1) )
  integer ::p4aa(  size(n2%x1) )
  integer ::p5a (  size(v %x1) )
  integer ::p5aa(  size(vv%x1) )
  integer ::p6a (  n3%x1(1) )
  integer ::p6aa(  n4%x1(1) )
  integer ::p7a (  n5(1)%x1(1) )
  integer ::p7aa(  n6(1)%x1(1) )
 if (n1%x1(1) .ne.1) print *,'NG'
 if (n2%x1(1) .ne.1) print *,'NG'
 if (v %x1(1) .ne.1) print *,'NG'
 if (vv%x1(1) .ne.1) print *,'NG'
 if (size(p2a ).ne.1) print *,'NG'
 if (size(p2aa).ne.1) print *,'NG'
 if (size(p3a ).ne.1) print *,'NG'
 if (size(p3aa).ne.1) print *,'NG'
 end block
end associate
end associate
end associate
end associate
end associate
end associate
print *,'pass'
end
