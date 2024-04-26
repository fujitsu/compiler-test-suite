character(len=:),pointer::ptrstring(:)
character(len=10),target::string(4)='xxxxxxxxxx'
string(4)='xxxpassxxx'

ptrstring => string

associate(aa=>ptrstring(2:4))
 if(aa(3)(4:7) == 'pass') then
   aa(3)(4:7) = 'xxxx'
 else
   aa(3)(4:7) = 'aaaa'
 endif
end associate

if(all(string=='xxxxxxxxxx')) print*,'pass'

end
