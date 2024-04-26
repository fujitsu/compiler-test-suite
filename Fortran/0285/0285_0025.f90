character(len=:),allocatable::alcstring
character(len=10)::string='xxxpassxxx'

allocate(alcstring,source =string)

associate(aa=>alcstring)
 if(aa(4:7) == 'pass') then
   aa(4:7) = 'xxxx'
 else
   aa(4:7) = 'aaaa'
 endif
end associate

if(alcstring=='xxxxxxxxxx') print*,'pass'

end
