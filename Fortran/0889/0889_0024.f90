integer,contiguous,pointer :: ptr(:,:)

type tt
 integer :: X3D(4,4,4)
end type

integer ::i=2,j=3
type(tt),target :: obj
 
ptr(1:1,1:6) => obj%X3D (:, i:j, 2)
if(is_contiguous(ptr)) print*,'pass'
end

