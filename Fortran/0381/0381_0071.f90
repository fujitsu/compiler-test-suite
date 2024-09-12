interface
 function ifun()
 end function
end interface
integer,pointer,external::p
p=>ifun
if (p()/=1)print *,'error'
print *,'pass'
end
function ifun()
ifun=1
end
