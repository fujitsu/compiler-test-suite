class(*),pointer:: obj(:),obj2(:)
character(len=5),target :: ch(4)               
i=2
ch(1)='abcde'                                  
ch(2)='fghij'                                  
ch(3)='klmno'                                  
ch(4)='pqrst'                                  
obj=>ch(:i)(i:) 
obj2=>ch(:)
select type(obj)   
type is(character(*))                          
    if(len(obj) .ne. 4)print*,"err1",len(obj)   
    if(obj(1)//"1" .ne. 'bcde'//"1")print*,"err2",obj(1)    
    if(obj(2)//"1" .ne. 'ghij'//"1")print*,"err3",obj(2)    
end select
select type(obj2)   
type is(character(*))                          
if(len(obj2)/=5) print *,"err4"
if(obj2(1)/="abcde") print *,"err5"
if(obj2(2)/="fghij") print *,"err6"
if(obj2(3)/="klmno") print *,"err7"
if(obj2(4)/="pqrst") print *,"err8"

end select 
print*,"pass"
end
