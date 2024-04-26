integer :: arr(8)=2
call ss(arr(::1))

contains
subroutine ss(dd)
 integer,contiguous :: dd(:)
 if(all(dd==2)) print*,'pass'
end subroutine
end
