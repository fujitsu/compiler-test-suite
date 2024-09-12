subroutine s
interface 
 function ifun()
 end function
 function jfun()
 end function
end interface
procedure(ifun),pointer :: iii
iii=>jfun
if (.not.associated(iii,jfun)) print *,'error-2'
if (iii()/=123)print *,'error-1'
iii=>null()
if (associated(iii,jfun)) print *,'error-4'
end subroutine
integer,pointer :: p
integer,target :: t(2)
p=>t(2)
if (.not.associated(p,t(2))) print *,'error-3'
call s
print *,"pass"
end
 function jfun()
  jfun=123
 end function
