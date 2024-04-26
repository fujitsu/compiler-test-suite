type tt
 integer,pointer,contiguous :: aa(:,:)
end type

type(tt) :: obj

interface
subroutine sss(b)
integer::b(5,*)
end subroutine
end interface

allocate(obj%aa(5,4))
obj%aa = 4

if(is_contiguous(obj%aa) .neqv. .true.) print*,101
call sss(obj%aa)

end

subroutine sss(b)
integer::b(5,*)
if(all(b(:,1:3)==4)) print*,'pass'
end subroutine
