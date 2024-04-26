character(len=10),target::string='xxxpassxxx'

call sub(string)
if(string=='xxxpassxxx') print*,'pass'

contains
subroutine sub(dmystring)
character(len=10),value::dmystring

associate(aa=>dmystring)
 if(aa(4:7) == 'pass') then
   aa(4:7) = 'xxxx'
 else
   aa(4:7) = 'aaaa'
 endif
end associate
if(dmystring/='xxxxxxxxxx') print*,'101'
end subroutine
end
