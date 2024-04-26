character(len=:),pointer::ptrstring(:,:,:,:,:,:)
character(len=10),target::string(4,5,7:14,3:7,8,8)='xxxxxxxxxx'
string(4,5,10,5,4,4)='xxxpassxxx'

ptrstring => string

associate(aa=>ptrstring)
 if(aa(4,5,10,5,4,4)(4:7) == 'pass') then
   aa(4,5,10,5,4,4)(4:7) = 'xxxx'
 else
   aa(4,5,10,5,4,4)(4:7) = 'aaaa'
 endif
end associate

if(all(string=='xxxxxxxxxx')) print*,'pass'

end
