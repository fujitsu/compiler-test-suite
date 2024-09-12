module mod0
 interface 
   function px1() result(r)
    character(2),pointer::r
   end function
 end interface
contains
function   p104()
 procedure (px1),pointer :: p104
p104=>px1
end function
end
use mod0
 procedure (px1),pointer :: p
p=>p104()
if (p()/='xy')print *,'error-001'
print *,'pass'
end
   function px1() result(r)
    character(2),pointer::r
     allocate(r)
     r='xy'
   end function
