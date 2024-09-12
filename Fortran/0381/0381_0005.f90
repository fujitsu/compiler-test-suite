module mod0
 interface 
   function px1(i) result(r)
    character(i),pointer::r
   end function
 end interface
end
module mod
use mod0
contains
recursive function   p104(i) result(r)
entry      p106(i) result(r)
 procedure (px1),pointer :: r

entry      p105(i) result(r)
select case (i)
  case (0) 
    i=i+1
    r=>p104(i)
  case (1) 
    i=i+1
    r=>p105(i)
  case (2) 
    i=i+1
    r=>p106(i)
  case (3) 
    r=>px1
 end select
end function
end
use mod
 procedure (px1),pointer :: p
 i=0
p=>p104(i)
if (p(2)/='xy')print *,'error-001'
p=>p105(i)
if (p(2)/='xy')print *,'error-002'
p=>p105(i)
if (p(2)/='xy')print *,'error-003'
print *,'pass'
end
   function px1(i) result(r)
    character(i),pointer::r
     allocate(r)
     r='xy'
   end function
