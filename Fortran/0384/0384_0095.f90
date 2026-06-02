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
 function iiia(i,j,k,d)
  character(i+3) :: iiia
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
cha = iiia(3,1,2,3.0)
if (cha.ne.'aaabbb') print *,'fail'
end subroutine
end
 function jfun(i)
  character(i+3) :: jfun
  jfun='aaa'//'bbb'
 end function
 function iiia(i,j,k,d)
  character(i+3) :: iiia
  iiia='aaa'//'bbb'
 end function
