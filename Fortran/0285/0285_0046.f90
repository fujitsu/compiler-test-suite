character(len=23),target::string(7,4,7)='xxxxxxxxxxxxxxxxxxxxxxx'
string(2,4,3)='xxxpassxxxxxxxxxxxxxxxx'

if (fun(string)==1) print*,'pass'

contains
function fun(dmystring)
character(len=23)::dmystring(:,:,:)
integer::fun
fun=0

associate(aa=>dmystring(:,2:4,::2))
 if(aa(2,3,2)(4:7) == 'pass') then
   aa(2,3,2)(4:7) = 'xxxx'
 else
   aa(2,3,2)(4:7) = 'aaaa'
 endif
end associate
if(all(string=='xxxxxxxxxxxxxxxxxxxxxxx')) fun=1
end function
end
