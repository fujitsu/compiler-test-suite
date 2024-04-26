character(len=3) :: aa(5,5) = 'xyz'
call ss(aa)

contains
subroutine ss(a)
character(len=3),contiguous::a(:,:)
call sss(a)
if(is_contiguous(a)) print *,'pass'
end subroutine

subroutine sss(b)
character(len=3)::b(5,2)
if(all(b/='xyz'))print*,101
end subroutine

end
