interface
 function ifun(i)
  character :: ifun
  integer,pointer :: i
 end function
 function jfun(i)
  character :: jfun
  integer,pointer :: i
 end function
end interface
procedure(ifun),pointer :: p
character :: cha
  integer,pointer :: ip
allocate(ip)
p=>jfun
cha = jfun(ip)
cha = p(ip)
if (cha.ne.'a') print *,'fail'
print *,"pass"
end
 function jfun(i)
  character :: jfun
  integer,pointer :: i
  jfun='a'
  i=1
 end function
