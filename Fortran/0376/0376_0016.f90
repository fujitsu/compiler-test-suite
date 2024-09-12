subroutine s
interface
 function ifun()
 end function
end interface
procedure(ifun),pointer :: ipp
call t1(ipp)
contains
subroutine t1(iii)
interface 
 function ifun()
 end function
 function jfun()
 end function
end interface
procedure(ifun),pointer :: iii
iii=>jfun
if (associated(iii,jfun)) then
else 
 print *,'error-2'
endif
if (iii()/=123)print *,'error-1'
end subroutine
end
call s
print *,"pass"
end
 function jfun()
  jfun=123
 end function
