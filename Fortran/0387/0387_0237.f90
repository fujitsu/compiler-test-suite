interface
 function ifun(i,j)
  character :: ifun
  integer,pointer :: i
  integer,target :: j
 end function
 function jfun(i,j)
  character :: jfun
  integer,pointer :: i
  integer,target :: j
 end function
end interface

procedure(ifun),pointer :: p
character :: cha
integer,pointer :: ip
p=>jfun
cha = p(ip,k)
if (cha.ne.'a') print *,'fail'

print *,'pass'

end

function jfun(i,j)
 character :: jfun
 integer,pointer :: i
 integer,target :: j
 jfun='a'
 i=>j
end function
