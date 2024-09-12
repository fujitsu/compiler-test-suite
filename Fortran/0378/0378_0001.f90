module m1
contains
function  s1() result(c) bind(c)
character  c
entry ss1() result(c) 
c='1'
end function
end
module m2
contains
function  s2() result(c) 
character  c
entry ss2() result(c) bind(c)
c='1'
end function
end
module m3
contains
function  s3() result(c) 
character  c
entry ss31() result(c) bind(c)
entry ss32() result(c)         
entry ss33() result(c) bind(c)
entry ss34() result(c)        
entry ss35() result(c) bind(c)
c='1'
end function
end
module m4
contains
function  s4() result(c) bind(c)
character  c
entry ss41() result(c) bind(c)
entry ss42() result(c)         
entry ss43() result(c) bind(c)
entry ss44() result(c)        
entry ss45() result(c) bind(c)
c='1'
end function
end
subroutine x1
use m1 
if (s1()/='1')print *,'error-1'
if (ss1()/='1')print *,'error-2'
end
subroutine x2
use m2 
if (s2()/='1')print *,'error-1'
if (ss2()/='1')print *,'error-2'
end
subroutine x3
use m3 
if (s3()/='1')print *,'error-1'
if (ss31()/='1')print *,'error-2'
if (ss32()/='1')print *,'error-2'
if (ss33()/='1')print *,'error-2'
if (ss34()/='1')print *,'error-2'
if (ss35()/='1')print *,'error-2'
end
subroutine x4
use m4 
if (s4()/='1')print *,'error-1'
if (ss41()/='1')print *,'error-2'
if (ss42()/='1')print *,'error-2'
if (ss43()/='1')print *,'error-2'
if (ss44()/='1')print *,'error-2'
if (ss45()/='1')print *,'error-2'
end
call x1
call x2
call x3
call x4
print *,'pass'
end
