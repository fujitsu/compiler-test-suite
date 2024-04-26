character(len=:),pointer::ptrstring
character(len=10),target::string='xxxpassxxx'

ptrstring =>string

associate(aa=>ptrstring)
 if(aa(4:7) == 'pass') then
   aa(4:7) = 'xxxx'
 else
   aa(4:7) = 'aaaa'
 endif
end associate

if(string=='xxxxxxxxxx') print*,'pass'

end
