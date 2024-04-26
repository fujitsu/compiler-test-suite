character(len=10)::string(5,7,4)='xxxxxxxxxx'

associate(aa=>string(2:4,:,::2))
 aa='xxxpassxxx'
 if(all(aa(:,:,:)(4:7)=='pass')) aa(:,:,:)(4:7)='xxxx'
end associate

if(all(string(:,:,:)(:)=='xxxxxxxxxx')) print*,'pass'
end
