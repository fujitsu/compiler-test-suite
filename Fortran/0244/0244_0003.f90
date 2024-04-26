type tt
 integer :: aa(5,4) =4
end type

type(tt) :: obj

obj%aa(:,4)=0
call ss(obj%aa)

contains
subroutine ss(a)
integer,contiguous::a(:,:)
call sss(a)
end subroutine

subroutine sss(b)
integer::b(5,*)
if(all(b(:,1:3)==4)) print*,'pass'
end subroutine

end
