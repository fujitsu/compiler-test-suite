type tt
 integer,contiguous,pointer :: ptr(:,:)
end type

type(tt),pointer :: obj(:)
contiguous :: obj

integer,target :: tgt(3,4)=2
allocate(obj(1))

obj(1)%ptr=>tgt
if(all(obj(1)%ptr == 2)) print*,'pass'
end
