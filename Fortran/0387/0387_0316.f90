module mod
type ty1
 procedure(ifun),nopass,pointer :: ip 
 procedure(ifun),nopass,pointer ,private:: kip2 => null()
 procedure(ifun),nopass,pointer ,private:: kip3 => null()
end type
contains
 function ifun(i)
   integer :: ifun
   ifun=i
 end function
end

use mod
type ty0
 procedure(ifun),nopass,pointer :: ip
end type
type ty2
 type (ty1)  :: str(3)
end type
type (ty2) :: stra
stra%str(3)%ip=>ifun
if(stra%str(3)%ip(3).ne.3) print *,'fail'
print *,'pass'
end
