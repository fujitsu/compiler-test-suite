type tt
integer,pointer, contiguous :: cptr(:,:,:)
end type

type(tt) :: obj

integer,pointer, contiguous :: ptr2(:,:)
integer,target :: tgt(8,8,8)=2

obj%cptr => tgt

ptr2=>tgt(:,2:4,3)
ptr2=>obj%cptr(:,2:4,3)

print*,'pass'
end
