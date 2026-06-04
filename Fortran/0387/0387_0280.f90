interface
 function ifun()
 end function
 function jfun()
 end function
end interface
procedure(ifun),pointer :: ip
procedure(jfun),pointer :: ip2
procedure(ifun),pointer :: ip3
ip=>jfun
ip2=>ifun
ip3=>jfun
ii = ip2()
ii = ip3()
ii = ip()
if (ii.ne.1) print *,'fail'
print *,'pass'
end
 function jfun()
   jfun=1
 end function
 function ifun()
   ifun=1
 end function
