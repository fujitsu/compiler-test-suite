character(len=:),allocatable::alcstring(:)
character(len=10)::string(4)='xxxxxxxxxx'
string(4)='xxxpassxxx'

allocate(alcstring, source = string)

associate(aa=>alcstring(2:4))
 if(aa(3)(4:7) == 'pass') then
   aa(3)(4:7) = 'xxxx'
 else
   aa(3)(4:7) = 'aaaa'
 endif
end associate

if(all(alcstring=='xxxxxxxxxx')) print*,'pass'
end
