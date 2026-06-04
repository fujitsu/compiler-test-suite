interface
 function ifun()
 end function
 function jfun()
 end function
end interface
procedure(ifun),pointer :: ip
ip=>jfun
ii = ip()
if (ii.ne.1) print *,'fail'
print *,'pass'
end
 function jfun()
   jfun=1
 end function
