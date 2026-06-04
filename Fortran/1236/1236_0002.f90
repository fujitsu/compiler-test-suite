IMPLICIT NONE
integer::x1(1)
integer,parameter::r(1)=1
integer          ::rr(1)=1


associate (n =>1 )
associate (nn=>100,n1 =>rr )

 block
  integer ::p1a (1:n1(1) )
  integer ::p2a (n1(1) :2)
  character :: cha*(n1(1) )
  character(n1(1) ) :: chb
 if (len (cha ).ne.1) print *,'NG1'
 if (len (chb ).ne.1) print *,'NG1'
 if (size(p1a ).ne.1) print *,'NG1'
 if (size(p2a ).ne.2) print *,'NG2'
 if (n1(1).ne.1) print *,'NG3'
 end block
associate (n2 =>r ,nnn=>100)
 block
 integer ,dimension(1:n2(1) ) :: p1a
 integer ,dimension(n2(1) :2) ::p2a
 integer ,dimension(1:n2(1) ,10) :: p3a
 integer ,dimension(n2(1) :2,10) ::p4a
 integer ,dimension(20,1:n2(1) ,10) :: p5a
 integer ,dimension(30,n2(1) :2,10) ::p6a
 if (size(p1a,1 ).ne.1) print *,'NG'
 if (size(p2a,1 ).ne.2) print *,'NG'
 if (size(p3a,1 ).ne.1) print *,'NG'
 if (size(p4a,1 ).ne.2) print *,'NG'
 if (size(p5a,2 ).ne.1) print *,'NG'
 if (size(p6a,2 ).ne.2) print *,'NG'
 end block
associate (nnnn=>11,nnnnn=>10,n3 =>r )
 block
  integer ::p6a (  n3(1) )
 if (size(p6a ).ne.1) print *,'NG'
 if (n3(1).ne.1) print *,'NG'
 end block
end associate
end associate
end associate
end associate

print *,'pass'
end
