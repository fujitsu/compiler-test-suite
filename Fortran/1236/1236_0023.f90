IMPLICIT NONE
integer::x1(1)
integer,parameter::r(1)=1
integer          ::rr(1)=1
integer :: ii=1

associate (n =>1 )
associate (n1 =>rr(1) ,x1=>1,x2=>2)

 block
integer :: arra(ii)
  integer ::p1a (1:n-1+n1 )
  integer ::p2a (n-1+n1 :2)
integer :: arr(ii)
  character :: cha*(n-1+n1 )
  character(n-1+n1 ) :: chb
 if (len (cha ).ne.1) print *,'NG1'
 if (len (chb ).ne.1) print *,'NG1'
 if (size(arr ).ne.1) print *,'NG1'
 if (size(p1a ).ne.1) print *,'NG1'
 if (size(p2a ).ne.2) print *,'NG2'
 if (n1.ne.1) print *,'NG3'
 end block
associate (n2 =>r(1),x3=>2 )
 block
integer :: arra(ii)
 integer ,dimension(1:n-1+n2 ) :: p1a
 integer ,dimension(n-1+n2 :2) ::p2a
 integer ,dimension(1:n-1+n2 ,10) :: p3a
integer :: brr(ii)
 integer ,dimension(n-1+n2 :2,10) ::p4a
 integer ,dimension(20,1:n-1+n2 ,10) :: p5a
 integer ,dimension(30,n-1+n2 :2,10) ::p6a
 if (size(brr ).ne.1) print *,'NG1'
 if (size(p1a,1 ).ne.1) print *,'NG'
 if (size(p2a,1 ).ne.2) print *,'NG'
 if (size(p3a,1 ).ne.1) print *,'NG'
 if (size(p4a,1 ).ne.2) print *,'NG'
 if (size(p5a,2 ).ne.1) print *,'NG'
 if (size(p6a,2 ).ne.2) print *,'NG'
 end block
associate (x4=>1,n3 =>r(1))
 block
integer :: arra(ii)
integer :: crr(ii)
  integer ::p6a (  n-1+n3 )
 if (size(crr ).ne.1) print *,'NG'
 if (size(p6a ).ne.1) print *,'NG'
 if (n3.ne.1) print *,'NG'
 end block
end associate
end associate
end associate
end associate

print *,'pass'
end
