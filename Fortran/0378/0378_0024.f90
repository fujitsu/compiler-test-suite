function  s() result(c)
character  c
entry ss() result(c) bind(c)
entry sss() result(c) bind(c)
c='1'
end function

interface
function  s() result(c)
character  c
end function
end interface
if (s()/='1')print *,'error-1'
print *,'pass'
end
