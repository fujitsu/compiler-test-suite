IMPLICIT NONE
integer::x1(1)
integer,parameter::r(1)=1
integer          ::rr(1)=1
integer :: aaa=0

associate (n =>1 )
associate (n1 =>rr(1)+0 )

 block
  integer ::p1a (1:n1+aaa )
  integer ::p2a (n1+aaa :2)
integer :: bbb(aaa)
  character :: cha*(n1+aaa )
  character(n1+aaa ) :: chb
 if (len (cha ).ne.1) print *,'NG1'
 if (len (chb ).ne.1) print *,'NG1'
 if (size(p1a ).ne.1) print *,'NG1'
 if (size(p2a ).ne.2) print *,'NG2'
 if (n1.ne.1) print *,'NG3'
 end block
associate (a1=>1,a2=>2,a3=>3,n2 =>int(1) )
 block
 integer ,dimension(1:n2+aaa ) :: p1a
integer :: bbb(aaa)
 integer ,dimension(n2+aaa :2) ::p2a
 integer ,dimension(1:n2+aaa ,10) :: p3a
 integer ,dimension(n2+aaa :2,10) ::p4a
 integer ,dimension(20,1:n2+aaa ,10) :: p5a
 integer ,dimension(30,n2+aaa :2,10) ::p6a
 if (size(p1a,1 ).ne.1) print *,'NG'
 if (size(p2a,1 ).ne.2) print *,'NG'
 if (size(p3a,1 ).ne.1) print *,'NG'
 if (size(p4a,1 ).ne.2) print *,'NG'
 if (size(p5a,2 ).ne.1) print *,'NG'
 if (size(p6a,2 ).ne.2) print *,'NG'
 end block
associate (nn=>1,n3 =>r(1)+0 )
 block
  integer ::p6a (  n3+aaa )
integer :: bbb(aaa)
 if (size(p6a ).ne.1) print *,'NG'
 if (n3.ne.1) print *,'NG'
 end block
end associate
end associate
end associate
end associate

print *,'pass'
end
