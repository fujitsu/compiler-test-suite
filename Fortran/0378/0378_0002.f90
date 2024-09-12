interface
function s() result(c) bind(c)
character  c
end function
function ss() result(c)
character  c
end function
end interface
integer(1):: is
if (s()/='1')print *,'error-1'
if (ss()/='1')print *,'error-2'
if (is()/=ichar('1'))print *,'error-3'
print *,'pass'
end

function  s() result(c) bind(c)
character  c
entry ss() result(c) 
c='1'
end function

function  is() result(i) 
integer(1):: i
character  c
c='1'
i=ichar(c)
end
