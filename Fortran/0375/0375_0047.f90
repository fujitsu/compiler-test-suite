function  s() result(c) bind(c)
character  c
entry ss() result(c) 
entry sss() result(c) 
entry ssss() result(c) bind(c) 
c='1'
end function
interface
function  s() result(c) bind(c)
character  c
end function
function  ss() result(c)
character  c
end function
function  sss() result(c)
character  c
end function
function  ssss() result(c) bind(c)
character  c
end function
end interface
if (s()/='1')print *,'error-1'
if (s()/='1')print *,'error-1'
if (ss()/='1')print *,'error-2'
if (sss()/='1')print *,'error-2'
if (ssss()/='1')print *,'error-2'
print *,'pass'
end
