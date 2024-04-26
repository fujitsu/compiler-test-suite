type tt
 integer,contiguous,pointer :: ptr(:,:)
end type

type(tt) :: obj
integer,target :: tgt(3,4)=2

obj%ptr=>tgt
if(all(obj%ptr == 2)) print*,'pass'
end
