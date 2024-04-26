integer,target :: aa(5,5) =4
call ss(aa)

contains
subroutine ss(a)

interface
subroutine sss(b)
integer::b(5,2)
end subroutine
end interface

integer,contiguous::a(:,:)
call sss(a)
if(is_contiguous(a(:,:2))) print *,'pass'
end subroutine

end

subroutine sss(b)
integer::b(5,2)
if(all(b/=4))print*,101
end subroutine
