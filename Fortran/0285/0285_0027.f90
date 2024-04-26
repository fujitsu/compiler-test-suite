character(len=10),target::string='xxxpassxxx'

call sub(string)
if(string=='xxxxxxxxxx') print*,'pass'

contains
subroutine sub(ptrstring)
character(len=10)::ptrstring

associate(aa=>ptrstring)
 if(aa(4:7) == 'pass') then
   aa(4:7) = 'xxxx'
 else
   aa(4:7) = 'aaaa'
 endif
end associate
end subroutine
end
