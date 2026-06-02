IMPLICIT NONE
type x
  integer::x1(1)
end type
type(x),parameter::r(1)=x(1)
type(x)         ::rr(1)=x(1)
integer :: int(1)=1

associate (n =>1 )
associate (n1 =>rr(1) )

 block
  integer ::p1a (1:int(n1%x1(1)) )
  integer ::p2a (int(n1%x1(1)) :2)
  character :: cha*(int(n1%x1(1)) )
  character(int(n1%x1(1)) ) :: chb
 if (len (cha ).ne.1) print *,'NG1'
 if (len (chb ).ne.1) print *,'NG1'
 if (size(p1a ).ne.1) print *,'NG1'
 if (size(p2a ).ne.2) print *,'NG2'
 if (n1%x1(1).ne.1) print *,'NG3'
 end block
associate (n2 =>r(1) )
 block
 integer ,dimension(1:int(n2%x1(1)) ) :: p1a
 integer ,dimension(int(n2%x1(1)) :2) ::p2a
 integer ,dimension(1:int(n2%x1(1)) ,10) :: p3a
 integer ,dimension(int(n2%x1(1)) :2,10) ::p4a
 integer ,dimension(20,1:int(n2%x1(1)) ,10) :: p5a
 integer ,dimension(30,int(n2%x1(1)) :2,10) ::p6a
 if (size(p1a,1 ).ne.1) print *,'NG'
 if (size(p2a,1 ).ne.2) print *,'NG'
 if (size(p3a,1 ).ne.1) print *,'NG'
 if (size(p4a,1 ).ne.2) print *,'NG'
 if (size(p5a,2 ).ne.1) print *,'NG'
 if (size(p6a,2 ).ne.2) print *,'NG'
 end block
associate (n3 =>r(1) )
 block
  integer ::p6a (  int(n3%x1(1)) )
 if (size(p6a ).ne.1) print *,'NG'
 if (n3%x1(1).ne.1) print *,'NG'
 end block
end associate
end associate
end associate
end associate

print *,'pass'
end
