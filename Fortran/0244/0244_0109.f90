integer,target :: trg(10,10,10,4)=9

logical :: ll11 = is_contiguous(trg(:,:,:,[1,2,3,4]))

if(ll11 .neqv. .false.) print*,110,'trg(:,:,:,[1,2,3,4])'
print*,'pass'
end
