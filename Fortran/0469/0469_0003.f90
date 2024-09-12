module mod
interface operator(.aaa.)
   function ifun(i1)
     integer,intent(in) :: i1
   end function
end interface
end

use mod,operator(.bbb.) => operator(.aaa.)
i=.bbb.1
if (i.ne.11) print *,'err'
print *,'pass'
end

   function ifun(i1)
     integer,intent(in) :: i1
     ifun=i1+10
   end function
