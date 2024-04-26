integer,target :: aa(5,5) =4
call ss(aa)

contains
subroutine ss(a)
integer,contiguous::a(:,:)
call sss(a,a(2:,:))
if(is_contiguous(a(:,:2))) print *,'pass'
end subroutine

subroutine sss(b,c)
integer::b(5,2),c(4,5)
if(all(b/=4))print*,101
if(all(c/=4))print*,102
end subroutine

end
