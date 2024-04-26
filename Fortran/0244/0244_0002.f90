integer,target :: aa(5,5) =4
call ss(aa)

contains
subroutine ss(a)
integer,contiguous::a(:,:)

call sss(a)
if(is_contiguous(a)) print *,'pass'
end subroutine

subroutine sss(b)
integer::b(5,2)
if(all(b/=4))print*,101
end subroutine

end
