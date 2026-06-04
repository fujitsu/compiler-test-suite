interface
 function ifun(i1,i2)
 end function
 function jfun(i1,i2)
 end function
end interface
procedure(ifun),pointer :: ip
ip=>jfun
ii = ip(i1=1,i2=2)
if (ii.ne.1) print *,'fail'
print *,'pass'
end
 function jfun(i1,i2)
   jfun=1
 end function

