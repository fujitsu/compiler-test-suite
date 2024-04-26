type tt
 character(len=3),pointer,contiguous :: aa(:,:)
end type

type(tt) :: obj

allocate(obj%aa(5,4))
obj%aa = 'abc'

if(is_contiguous(obj%aa) .neqv. .true.) print*,101
call sss(obj%aa)

contains
subroutine sss(b)
character(len=3)::b(5,*)
if(all(b(:,1:3)=='abc')) print*,'pass'
end subroutine

end
