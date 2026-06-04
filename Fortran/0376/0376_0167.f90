subroutine temp
integer,pointer::p
integer,target::t
if (associated(p,t))print *,'1'
end
subroutine s
interface
 function ifun()
  character(3) :: ifun
 end function
end interface
procedure(ifun),pointer :: ipp
character(3):: c
call t1(ipp,c)
contains
subroutine t1(iii,c)
implicit character(3)(i)
character(*):: c
interface 
 function ifun()
  character(3) :: ifun
 end function
 function jfun()
  character(3) :: jfun
 end function
end interface
procedure(ifun),pointer :: iii
if (len(c)/=3)print *,'fail'
iii=>jfun
if (associated(iii,jfun)) then
else 
 print *,'error-2'
endif
if (iii()/='123')print *,'error-1'
end subroutine
end
call s
print *,"pass"
end
 function jfun()
  character(3) :: jfun
  jfun='123'
 end function
