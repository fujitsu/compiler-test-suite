IMPLICIT NONE
integer::x1(1)
character ,parameter::r(1)='1'
character           ::rr(1)='1'


associate (n =>1 )
associate (n1 =>rr(1),aa=>1 )

 block
integer ::crr(1)
  integer ::p1a (1:len(n1),10 )
  integer ::p2a (len(n1) :2,10)
  character :: cha*(len(n1) )
  character(len(n1) ) :: chb
 if (len (cha ).ne.1) print *,'NG1'
 if (len (chb ).ne.1) print *,'NG1'
 if (size(p1a,1 ).ne.1) print *,'NG1'
 if (size(p2a,1 ).ne.2) print *,'NG2'
 if (len(n1).ne.1) print *,'NG3'
 end block
associate (ab=>1,n2 =>r(1) )
 block
integer ::arr(1)
 integer ,dimension(20,1:len(n2) ) :: p1a
 integer ,dimension(20,len(n2) :2) ::p2a
 integer ,dimension(20,1:len(n2) ,10) :: p3a
 integer ,dimension(20,len(n2) :2,10) ::p4a
 integer ,dimension(20,20,1:len(n2) ,10) :: p5a
 integer ,dimension(20,30,len(n2) :2,10) ::p6a
 if (size(p1a,2 ).ne.1) print *,'NG'
 if (size(p2a,2 ).ne.2) print *,'NG'
 if (size(p3a,2 ).ne.1) print *,'NG'
 if (size(p4a,2 ).ne.2) print *,'NG'
 if (size(p5a,3 ).ne.1) print *,'NG'
 if (size(p6a,3 ).ne.2) print *,'NG'
 end block
associate (ac=>1,n3 =>'a' )
 block
integer ::brr(1)
  integer ::p6a (20,  len(n3) )
 if (size(p6a,2 ).ne.1) print *,'NG'
 if (len(n3).ne.1) print *,'NG'
 end block
end associate
end associate
end associate
end associate

print *,'pass'
end
