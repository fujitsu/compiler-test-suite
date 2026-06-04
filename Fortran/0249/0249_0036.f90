type tt
 integer :: X3D(4,4,4)
end type
type(tt) ,volatile:: obj
 
obj%X3D=0
call ss(obj%X3D (:, 2:3, 2))

contains
subroutine ss(dd)
 integer,volatile,contiguous :: dd(:,:)
 print*,dd,'pass'
end subroutine
end
