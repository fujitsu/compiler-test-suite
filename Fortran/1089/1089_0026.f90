module m
integer,parameter::t1=2
integer          ::w1=2
contains
 subroutine s1()
associate(x1=>w1)
   block
     integer :: d2(len ([character(x1):: '1234'(1:x1)])) 
      if (size(d2)/=2) print *,1012,size(d2)
   end block
end associate
end
end
use m
call s1()
         print *,'sngg192p : pass'
         end

