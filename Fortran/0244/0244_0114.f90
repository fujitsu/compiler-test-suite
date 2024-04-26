type tt1
 integer :: i = 4
end type

type tt
 type(tt1),pointer,contiguous :: aa(:,:)
 type(tt1),pointer :: bb(:,:)
end type

type(tt) :: obj

allocate(obj%aa(5,4))

obj%aa(:,1)%i=0

allocate(obj%bb(5,4))

obj%bb(:,1)%i=0

if(is_contiguous(obj%aa(:,2:)%i) .neqv. .false.) print*,101
if(is_contiguous(obj%aa(:,2:)) .neqv. .true.) print*,102
if(is_contiguous(obj%aa) .neqv. .true.) print*,103
call sss(obj%aa(:,2:)%i)

if(is_contiguous(obj%bb(:,2:)%i) .neqv. .false.) print*,104
if(is_contiguous(obj%bb(:,2:)) .neqv. .true.) print*,105
if(is_contiguous(obj%bb) .neqv. .true.) print*,106
call sss(obj%bb(:,2:)%i)
print*,'pass'

contains
subroutine sss(b)
integer::b(5,*)
if(all(b(:,1:3)/=4)) print*,101   
end subroutine

end
