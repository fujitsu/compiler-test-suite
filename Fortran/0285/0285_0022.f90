character(len=10)::string(5)='xxxxxxxxxx'

associate(aa=>string(2:4))
 aa='xxxpassxxx'
 if(all(aa(:)(4:7)=='pass')) aa(:)(4:7)='xxxx'
end associate

if(all(string(:)(:)=='xxxxxxxxxx')) print*,'pass'
end
