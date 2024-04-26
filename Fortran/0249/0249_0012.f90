type tt
 integer :: X3D(4,4,4)
end type
integer ::i=2,j=3
type(tt) :: obj
obj%X3D=0
 
call ss(obj%X3D (:, i:j, 2))

contains
subroutine ss(dd)
 integer,asynchronous,contiguous :: dd(:,:)
 print*,dd,'pass'
end subroutine
end
