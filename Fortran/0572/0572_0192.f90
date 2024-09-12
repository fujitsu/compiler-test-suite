type ty
character,allocatable :: cc(:,:)
integer :: dd(3,3)
end type ty
type(ty)::obj
allocate(obj%cc(3,3))
call sub(obj%cc(1:3:2,:),obj%dd)
contains
subroutine sub(dmy2,dmy3)
type(*) :: dmy2(:,:)
type(*) :: dmy3(:,:)
if(is_contiguous(dmy2) .neqv. .FALSE.)print*,"102"
if(is_contiguous(dmy3) .neqv. .TRUE.)print*,"103"
print*,"PASS"
end subroutine sub
end
