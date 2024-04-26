character(len=23),target::string(4)='xxxxxxxxxxxxxxxxxxxxxxx'
string(4)='xxxpassxxxxxxxxxxxxxxxx'

call sub(string)
if(all(string=='xxxxxxxxxxxxxxxxxxxxxxx')) print*,'pass'

contains
subroutine sub(dmystring)
character(len=23)::dmystring(:)
associate(aa=>dmystring(2:4))
 if(aa(3)(4:7) == 'pass') then
   aa(3)(4:7) = 'xxxx'
 else
   aa(3)(4:7) = 'aaaa'
 endif
end associate
end subroutine
end
