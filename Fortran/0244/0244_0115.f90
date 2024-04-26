type tt1
 character(len=3) :: i = 'abc'
end type

type tt2
 integer(kind=8) :: j=2
end type

type tt
 type(tt1),pointer,contiguous :: aa(:,:)
 type(tt2),pointer,contiguous :: bb(:,:)
end type

type(tt) :: obj

allocate(obj%aa(5,4))

obj%aa(:,1)%i='xxx'

allocate(obj%bb(5,4))

obj%bb(:,1)%j=0

if(is_contiguous(obj%aa(:5,2:)%i(:)) .neqv. .false. ) print*,101
if(is_contiguous(obj%aa(1:,:3)%i(1:)) .neqv. .false. ) print*,102
if(is_contiguous(obj%aa(2:4,2)%i(1:3)) .neqv. .false. ) print*,103
if(is_contiguous(obj%aa(1:5:1,:)) .neqv. .true. ) print*,104
if(is_contiguous(obj%aa%i) .neqv. .false. ) print*,105
if(is_contiguous(obj%aa%i(:)) .neqv. .false. ) print*,106
if(is_contiguous(obj%aa) .neqv. .true. ) print*,107
if(is_contiguous(obj%aa%i(1:3)) .neqv. .false. ) print*,108
if(is_contiguous(obj%bb%j) .neqv. .false. ) print*,109
call sss(obj%aa(:,2:)%i(:))

contains
subroutine sss(b)
character(len=3)::b(5,*)
if(all(b(:,1:3)=='abc')) print*,'pass'
end subroutine

end
