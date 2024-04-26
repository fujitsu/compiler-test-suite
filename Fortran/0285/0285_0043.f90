character(len=:),allocatable::alcstring(:,:,:,:)
character(len=10)::string(4,5:10,4,7)='xxxxxxxxxx'
string(4,7,3,5)='xxxpassxxx'

allocate(alcstring, source = string)

associate(aa=>alcstring(2:4,5:9,:,5))
 if(aa(3,3,3)(4:7) == 'pass') then
   aa(3,3,3)(4:7) = 'xxxx'
 else
   aa(3,3,3)(4:7) = 'aaaa'
 endif
end associate

if(all(alcstring=='xxxxxxxxxx')) print*,'pass'
end
