character(:),parameter :: b*2="ab",c*3="abc"
if ( b .ne. "ab" ) print *,'fail'
if ( c .ne. "abc" ) print *,'fail'
call sub()
print *,'ok'
end

subroutine sub()
character(:) :: b*2,c*3
parameter(b="ab",c="def")
if ( b .ne. "ab" ) print *,'fail'
if ( c .ne. "def" ) print *,'fail'
end subroutine
