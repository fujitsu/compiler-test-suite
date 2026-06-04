interface
 function ifun(i)
  character(i+3) :: ifun
 end function
 function jfun(i)
  character(i+3) :: jfun
 end function
end interface
procedure(ifun),pointer :: p
character(6) :: cha
p=>jfun
cha = jfun(3)
if (cha.ne.'aaabbb') print *,'fail'
cha = p(3)
if (cha.ne.'aaabbb') print *,'fail'
print *,"pass"
end
 function jfun(i)
  character(i+3) :: jfun
  jfun='aaa'//'bbb'
 end function
