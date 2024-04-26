type tt
integer,pointer, contiguous :: cptr(:,:,:)
end type

type(tt) :: obj

integer,pointer, contiguous :: ptr(:,:,:)
integer,target :: tgt(8,8,8)=2

obj%cptr => tgt

ptr=>tgt
ptr=>tgt(:,:,:)
ptr=>tgt(1:8,1:8:1,:)
ptr=>obj%cptr
ptr=>obj%cptr(:,:,:)

print*,'pass'
end
