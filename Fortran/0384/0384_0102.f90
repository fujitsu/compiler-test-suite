interface
 function ifun(i)
  character(i+3) :: ifun
 end function
 function jfun(i)
  character(i+3) :: jfun
 end function
end interface
procedure(ifun),pointer :: ipp
call test(ipp)
print *,"pass"
contains
subroutine test(iii)
interface 
 function jfun(i)
  character(i+3) :: jfun
 end function
end interface
interface 
function ifun(i)
  character(i+3) :: ifun
 end function
end interface
procedure(ifun),pointer :: iii
character(6) :: cha
iii=>jfun
cha = jfun(3)
if (cha.ne.'aaabbb') print *,'fail'
cha = iii(3)
if (cha.ne.'aaabbb') print *,'fail'
call isub()
end subroutine
subroutine isub()
interface
 function iii(i,j,k,ii) result(jfun)
  character(i+3) :: jfun
 end function
end interface
character(6) :: cha
 cha = iii(3,1,2,3)
end subroutine
end
 function jfun(i)
  character(i+3) :: jfun
  jfun='aaa'//'bbb'
 end function
 function iii(i,j,k,ii) result(jfun)
  character(i+3) :: jfun
  jfun="a"
 end function
