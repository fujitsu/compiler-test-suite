interface
 function ifun()
  character*5 :: ifun
 end function
 function jfun()
  character :: jfun
 end function
end interface
procedure(ifun),pointer :: p1
procedure(jfun),pointer :: p2
character :: cha

p2=>jfun
cha = p2()
if (cha.ne.'a') print *,'fail'
if (p2()/='a') print *,'fail'
p1=>ifun
if (p1()/='12345') print *,'fail'
call s(p1())

print *,'pass'
end
function jfun()
 character :: jfun
 jfun='a'
end function
function ifun()
 character(5) :: ifun
 ifun='12345'
end function
subroutine s(x)
character*(*) x
if (len(x)/=5)print *,'fail'
if (x/='12345')print *,'fail'
end


