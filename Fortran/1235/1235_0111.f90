IMPLICIT NONE
type x
  integer::x1(2)=1
end type
type xx
  type(x)::x2(1)=x(1)
end type
type(x),parameter::v=x(1)
type(x)::vv=x(1)
type(xx)::vvv=xx(x(1))
associate (n1 =>v )
associate (n2 =>vv )
associate (n3 =>x(1) )
associate (n4 =>xx(x(1)) )
associate (n5 =>vvv%x2(1) )
 block
  integer ::p2a (  n1%x1(1) )
  integer ::p2aa(  n2%x1(1) )
  integer ::p3a (  v %x1(1) )
  integer ::p3aa(  vv%x1(1) )
  integer ::p4a (  n3%x1(1) )
  integer ::p4aa(  n4%x2(1)%x1(1) )
  integer ::p5a (  n5%x1(1) )
 if (n1%x1(1) .ne.1) print *,'NG'
 if (n2%x1(1) .ne.1) print *,'NG'
 if (n3%x1(1) .ne.1) print *,'NG'
 if (n4%x2(1)%x1(1) .ne.1) print *,'NG'
 if (n5%x1(1) .ne.1) print *,'NG'
 if (v %x1(1) .ne.1) print *,'NG'
 if (vv%x1(1) .ne.1) print *,'NG'
 p2a =1;p2a =p2a 
 p2aa=1;p2aa=p2aa
 p3a =1;p3a =p3a 
 p3aa=1;p3aa=p3aa
 p4a =1;p4a =p4a 
 p4aa=1;p4aa=p4aa
 p5a =1;p5a =p5a 
 end block
end associate
end associate
end associate
end associate
end associate
print *,'pass'
end
