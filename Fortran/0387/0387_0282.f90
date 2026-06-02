interface
 function ifun(i)
  character(6) :: ifun
 end function
 function jfun(i)
  character(6) :: jfun
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
  character(6) :: jfun
  jfun='aaa'//'bbb'(1:i)
 end function
