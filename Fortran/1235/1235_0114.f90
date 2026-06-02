IMPLICIT NONE
type x
  integer::x1(1)
end type
type(x),parameter::r(1)=x(1)
type(x)::rr(1)=x(1)
associate (n3 =>r(1) )
associate (n4 =>rr(1) )
associate (n5 =>r )
associate (n6 =>rr )
 block
  integer ::p6a (  n3%x1(1) )
  integer ::p6aa(  n4%x1(1) )
  integer ::p7a (  n5(1)%x1(1) )
  integer ::p7aa(  n6(1)%x1(1) )
 if (size(p6a ).ne.1) print *,'NG'
 if (size(p6aa).ne.1) print *,'NG'
 if (size(p7a ).ne.1) print *,'NG'
 if (size(p7aa).ne.1) print *,'NG'
 if (n3%x1(1).ne.1) print *,'NG'
 if (n4%x1(1).ne.1) print *,'NG'
 if (n5(1)%x1(1).ne.1) print *,'NG'
 if (n6(1)%x1(1).ne.1) print *,'NG'
 end block
end associate
end associate
end associate
end associate
print *,'pass'
end
