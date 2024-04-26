character(len=10),target::string='xxxpassxxx'

if(fun(string) == 1)  print*,'pass'

contains
function fun(dmystring)
character(len=10)::dmystring
integer::fun 
fun = 0
associate(aa=>dmystring)
 if(aa(4:7) == 'pass') then
   aa(4:7) = 'xxxx'
 else
   aa(4:7) = 'aaaa'
 endif
end associate
if(string=='xxxxxxxxxx') fun=1
end function
end
