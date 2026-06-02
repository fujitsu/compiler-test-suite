character(:),parameter :: a*2="a"
character(:),target :: b*2=a
character(:) :: c1,c2,d1,d2
allocatable :: c1,c2
pointer :: d1,d2
allocate ( character(5) :: c1,c2 )
allocate ( character(5) :: d1,d2 )
c1 = a
c2 = c1
d1 => b
d2 => d1
if ( c1 .ne. a ) print *,'fail'
if ( c2 .ne. c1 ) print *,'fail'
if ( d1 .ne. b ) print *,'fail'
if ( d2 .ne. d1 ) print *,'fail'
call sub()
print *,'ok'
end

subroutine sub()
allocatable :: c1,c2
pointer :: d1,d2
character(:),parameter :: a*2="a"
character(:),target :: b*2=a
character(:) :: c1,c2,d1,d2
allocate ( character(5) :: c1,c2 )
allocate ( character(5) :: d1,d2 )
c1 = a
c2 = c1
d1 => b
d2 => d1
if ( c1 .ne. a ) print *,'fail'
if ( c2 .ne. c1 ) print *,'fail'
if ( d1 .ne. b ) print *,'fail'
if ( d2 .ne. d1 ) print *,'fail'
end
