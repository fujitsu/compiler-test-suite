type tt1
 character(len=3) :: i = 'abc'
 character(len=3) :: j = 'abc'
end type

type tt
 type(tt1),pointer,contiguous :: aa(:,:)
end type

type(tt) :: obj

allocate(obj%aa(5,4))

obj%aa(:,1)%i='xxx'

if(is_contiguous(obj%aa(:5,2:)%i(:)) .neqv. .false. ) print*,101
if(is_contiguous(obj%aa(1:,:3)%i(1:)) .neqv. .false. ) print*,102
if(is_contiguous(obj%aa(2:4,2)%i(1:3)) .neqv. .false. ) print*,103
if(is_contiguous(obj%aa(1:5,:)) .neqv. .true. ) print*,104
if(is_contiguous(obj%aa) .neqv. .true. ) print*,105
call sss(obj%aa(:,2:)%i(:))

contains
subroutine sss(b)
character(len=3)::b(5,*)
if(all(b(:,1:3)=='abc')) print*,'pass'
end subroutine

end
