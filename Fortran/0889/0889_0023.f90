integer :: X3D(4,4,4)
integer ::i=2,j=3
 
call ss(X3D (:, i:j, 2))

contains
subroutine ss(dd)
 integer,asynchronous,contiguous :: dd(:,:)
 print*,dd,'pass'
end subroutine
end
