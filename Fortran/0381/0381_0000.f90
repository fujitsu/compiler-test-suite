module mod0
 interface 
   function px1() result(r)
    character(2),pointer::r
   end function
 end interface
end
module mod
use mod0
contains
function   p104()
entry      p106()
 procedure (px1),pointer :: p104,p105,p106

entry      p105()
p104=>px1
end function
end
use mod
 procedure (px1),pointer :: p
p=>p104()
if (p()/='xy')print *,'error-001'
p=>p105()
if (p()/='xy')print *,'error-002'
p=>p105()
if (p()/='xy')print *,'error-003'
print *,'pass'
end
   function px1() result(r)
    character(2),pointer::r
     allocate(r)
     r='xy'
   end function
