type ty
complex :: cc(3,3)
character(len=:),allocatable :: ch(:,:)
end type ty

type(ty)::obj

allocate(character(len=3)::obj%ch(2,2))
call sub(obj%cc(2:3,2:3),obj%ch(1,:),3)
contains
subroutine sub(dmy1,dmy2,n)
type(*) :: dmy1(2,*)
type(*) :: dmy2(:)
integer :: n
if(is_contiguous(dmy2) .neqv. .FALSE.)print*,"102"
if(is_contiguous(dmy1) .neqv. .TRUE.)print*,"103"
if(any(lbound(obj%cc) /= 1))print*,"104"
if(any(ubound(obj%cc) /= n))print*,"106"
print*,"PASS"
end subroutine sub
end


