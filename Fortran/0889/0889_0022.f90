integer,contiguous,pointer :: ptr(:,:)
integer,target :: X3D(4,4,4)
integer ::i=2,j=3
 
ptr(1:1,1:6) => X3D (:, i:j, 2)
if(is_contiguous(ptr)) print*,'pass'
end

