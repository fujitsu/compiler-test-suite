integer::arr(3)=2
if(is_contiguous((/(i,i=1,10)/))) print*,'pass1/2'
if(is_contiguous([(/(i,i=1,10)/),arr])) print*,'pass2/2'
end
