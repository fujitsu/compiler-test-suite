IMPLICIT NONE
type x
  integer::x1(1)
end type
type(x),parameter::r(1)=x(1)
associate (n3 =>r(1) )
 block
  integer ::p6a (  n3%x1(1) )
 if (size(p6a ).ne.1) print *,'NG'
 if (n3%x1(1).ne.1) print *,'NG'
 end block
end associate
print *,'pass'
end
