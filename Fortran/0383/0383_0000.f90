character(:),parameter :: b*2="ab",c*3="abc"
if ( b .ne. "ab" ) call errtra
if ( c .ne. "abc" ) call errtra
call sub()
print *,'ok'
end

subroutine sub()
character(:) :: b*2,c*3
parameter(b="ab",c="def")
if ( b .ne. "ab" ) call errtra
if ( c .ne. "def" ) call errtra
end subroutine
