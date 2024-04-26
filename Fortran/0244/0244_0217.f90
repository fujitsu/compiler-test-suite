integer,parameter :: i=3,j=7
integer,pointer :: ptr(:)
integer,target :: arr(i:j)

ptr => arr

if(is_contiguous(ptr(3:7))) print*,'pass'
end
