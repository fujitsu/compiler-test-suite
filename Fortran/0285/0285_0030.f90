character(len=23),target::string(4)='xxxxxxxxxxxxxxxxxxxxxxx'
string(4)='xxxpassxxxxxxxxxxxxxxxx'

if (fun(string)==1) print*,'pass'

contains
function fun(dmystring)
character(len=23)::dmystring(:)
integer::fun
fun=0

associate(aa=>dmystring(2:4))
 if(aa(3)(4:7) == 'pass') then
   aa(3)(4:7) = 'xxxx'
 else
   aa(3)(4:7) = 'aaaa'
 endif
end associate
if(all(string=='xxxxxxxxxxxxxxxxxxxxxxx')) fun=1
end function
end
