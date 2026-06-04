module m
integer,parameter::t1=2
integer          ::w1=2
contains
 subroutine s1()
     integer :: c1(len ([character(t1):: '1234'(1:2 )])) 
     integer :: c2(len ([character(w1):: '1234'(1:2 )])) 
     integer :: c3(len ([character(t1):: '1234'(1:2 )])) 
     integer :: c4(len ([character(w1):: '1234'(1:2 )])) 
associate(p1=>t1,x1=>w1)
   block
     integer :: d1(len ([character(p1):: '1234'(1:2 )])) 
     integer :: d2(len ([character(x1):: '1234'(1:2 )])) 
     integer :: d3(len ([character(p1):: '1234'(1:2 )])) 
     integer :: d4(len ([character(x1):: '1234'(1:2 )])) 
      if (size(c1)/=2) print *,1001,size(c1)
      if (size(c2)/=2) print *,1002,size(c2)
      if (size(c3)/=2) print *,1003,size(c3)
      if (size(c4)/=2) print *,1004,size(c4)
      if (size(d1)/=2) print *,1011,size(d1)
      if (size(d2)/=2) print *,1012,size(d2)
      if (size(d3)/=2) print *,1013,size(d3)
      if (size(d4)/=2) print *,1014,size(d4)
       call s2
   end block
end associate
contains
 subroutine s2
     integer :: e1(len ([character(t1):: '1234'(1:2 )])) 
     integer :: e2(len ([character(w1):: '1234'(1:2 )])) 
     integer :: e3(len ([character(t1):: '1234'(1:2 )])) 
     integer :: e4(len ([character(w1):: '1234'(1:2 )])) 
associate(p1=>t1,x1=>w1)
   block
     integer :: f1(len ([character(p1):: '1234'(1:2 )])) 
     integer :: f2(len ([character(x1):: '1234'(1:2 )])) 
     integer :: f3(len ([character(p1):: '1234'(1:2 )])) 
     integer :: f4(len ([character(x1):: '1234'(1:2 )])) 
      if (size(e1)/=2) print *,2001,size(e1)
      if (size(e2)/=2) print *,2002,size(e2)
      if (size(e3)/=2) print *,2003,size(e3)
      if (size(e4)/=2) print *,2004,size(e4)
      if (size(f1)/=2) print *,2011,size(f1)
      if (size(f2)/=2) print *,2012,size(f2)
      if (size(f3)/=2) print *,2013,size(f3)
      if (size(f4)/=2) print *,2014,size(f4)
   end block
end associate
end
end
end
use m
call s1()
         print *,'sngg183p : pass'
         end

