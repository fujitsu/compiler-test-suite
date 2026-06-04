IMPLICIT NONE
type x
  integer::x1(1)
end type
type(x),parameter::r(1)=x(1)
type(x)         ::rr(1)=x(1)


associate (n =>1 )
associate (n6=>0 ,n1 =>rr )

 block
  integer,dimension(10,10,10) ::p1a (1:n1(1)%x1(1)+n6 )
  integer,dimension(10,10,10) ::p2a (n1(1)%x1(1)+n6 :2)
  character :: cha*(n1(1)%x1(1)+n6 )
  character(n1(1)%x1(1)+n6 ) :: chb
 if (len (cha ).ne.1) print *,'NG1'
 if (len (chb ).ne.1) print *,'NG1'
 if (size(p1a ).ne.1) print *,'NG1'
 if (size(p2a ).ne.2) print *,'NG2'
 if (n1(1)%x1(1).ne.1) print *,'NG3'
 end block
end associate

associate (n6=>0 ,n1 =>rr )

 block
  integer,dimension(10,10,10) ::p1a (1:n1(1)%x1(1)+n6 )
  integer,dimension(10,10,10) ::p2a (n1(1)%x1(1)+n6 :2)
  character :: cha*(n1(1)%x1(1)+n6 )
  character(n1(1)%x1(1)+n6 ) :: chb
 if (len (cha ).ne.1) print *,'NG1'
 if (len (chb ).ne.1) print *,'NG1'
 if (size(p1a ).ne.1) print *,'NG1'
 if (size(p2a ).ne.2) print *,'NG2'
 if (n1(1)%x1(1).ne.1) print *,'NG3'
 end block
 block
  integer,dimension(10,10,10) ::p1a (1:n1(1)%x1(1)+n6 )
  integer,dimension(10,10,10) ::p2a (n1(1)%x1(1)+n6 :2)
  character :: cha*(n1(1)%x1(1)+n6 )
  character(n1(1)%x1(1)+n6 ) :: chb
 if (len (cha ).ne.1) print *,'NG1'
 if (len (chb ).ne.1) print *,'NG1'
 if (size(p1a ).ne.1) print *,'NG1'
 if (size(p2a ).ne.2) print *,'NG2'
 if (n1(1)%x1(1).ne.1) print *,'NG3'
 end block
associate (n2 =>r ,n5=>0)
 block
 integer ,dimension(1:n2(1)%x1(1)+n5+n6 ) :: p1a
 integer ,dimension(n2(1)%x1(1)+n5+n6 :2) ::p2a
 integer ,dimension(1:n2(1)%x1(1)+n5+n6 ,10) :: p3a
 integer ,dimension(n2(1)%x1(1)+n5+n6 :2,10) ::p4a
 integer ,dimension(20,1:n2(1)%x1(1)+n5+n6 ,10) :: p5a
 integer ,dimension(30,n2(1)%x1(1)+n5+n6 :2,10) ::p6a
 if (size(p1a,1 ).ne.1) print *,'NG'
 if (size(p2a,1 ).ne.2) print *,'NG'
 if (size(p3a,1 ).ne.1) print *,'NG'
 if (size(p4a,1 ).ne.2) print *,'NG'
 if (size(p5a,2 ).ne.1) print *,'NG'
 if (size(p6a,2 ).ne.2) print *,'NG'
 end block
associate (n4=>0 ,n3 =>r )
 block
  integer,dimension(10,10,10) ::p6a (  n3(1)%x1(1)+n4+n6 )
 if (size(p6a ).ne.1) print *,'NG'
 if (n3(1)%x1(1).ne.1) print *,'NG'
 end block
end associate
end associate
 block
  integer,dimension(10,10,10) ::p1a (1:n1(1)%x1(1)+n6 )
  integer,dimension(10,10,10) ::p2a (n1(1)%x1(1)+n6 :2)
  character :: cha*(n1(1)%x1(1)+n6 )
  character(n1(1)%x1(1)+n6 ) :: chb
 if (len (cha ).ne.1) print *,'NG1'
 if (len (chb ).ne.1) print *,'NG1'
 if (size(p1a ).ne.1) print *,'NG1'
 if (size(p2a ).ne.2) print *,'NG2'
 if (n1(1)%x1(1).ne.1) print *,'NG3'
 end block
end associate
end associate

print *,'pass'
end
