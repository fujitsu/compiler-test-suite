interface
 function ifun()
  character :: ifun
 end function
 function jfun()
  character :: jfun
 end function
end interface
procedure(ifun),pointer :: p
character :: cha

p=>jfun
cha = p()
if (cha.ne.'a') print *,'fail'
print *,"pass"
end
 function jfun()
  character :: jfun
  jfun='a'
 end function
