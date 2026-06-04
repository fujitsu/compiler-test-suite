IMPLICIT NONE
type x
  integer::x1(1)
end type
type(x),parameter::r(1)=x(1)
integer,parameter::pp(1)=1
!type(x)::r(1)=x(1)
associate (n3 =>r(1) )
associate (n2 =>pp(1) )
 block
  integer                         ::p01 (  n3%x1(1) )
  integer,dimension(n3%x1(1)   )  ::p02 
  integer,dimension(1111       )  ::p03 (  n3%x1(1) )
  integer,dimension(n3%x1(1)+1 )  ::p04 (  1 )
  integer,dimension(n3%x1(1)+1 )  ::p05 (  1:n3%x1(1) )
  character (n3%x1(1))            ::c01
  character                       ::c02*(n3%x1(1))
  character (n3%x1(1)+1)          ::c03*(n3%x1(1))
 if (size(p01 ).ne.1) print *,'NG1'
 if (size(p02 ).ne.1) print *,'NG2'
 if (size(p03 ).ne.1) print *,'NG3'
 if (size(p04 ).ne.1) print *,'NG4'
 if (n3%x1(1).ne.1) print *,'NG5'
 if (len (c01 ).ne.1) print *,'NG6'
 if (len (c02 ).ne.1) print *,'NG7'
 if (len (c03 ).ne.1) print *,'NG8'
 end block
end associate
end associate
print *,'pass'
end
