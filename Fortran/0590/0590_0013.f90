integer::a(5)
character(len=6) :: b(3,4)

b = "123456"
call sub(a, b)
if(all(b /= "123456")) print *, "101"
print * , "PASS"

contains
subroutine sub(d,ch)
  integer :: d(:)
  character(len=(ubound(d,1)+1)),value :: ch(:,:)

  if (size(ch) /= 12) print*, 201
  if (len(ch) /= 6) print*, 202
  if (all(ch /= "123456")) print *, 203

  ch = "AAAAAA"
end subroutine

end

