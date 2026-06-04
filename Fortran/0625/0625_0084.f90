call sub01
call sub02
call sub03
call sub04
print *,'ok'
end

subroutine sub01()
pointer :: a,b,c
character(:) :: a,b*5,c
character(:),target :: ttt*5 = "abcde"
a=>ttt
b=>ttt
c=>ttt
if ( "abcde" .ne. a ) print *,'fail'
if ( "abcde" .ne. b ) print *,'fail'
if ( "abcde" .ne. c ) print *,'fail'
end subroutine

subroutine sub02()
character(:) :: a,b*5,c
pointer :: a,b,c
character(:),target :: ttt*5 = "abcde"
a=>ttt
b=>ttt
c=>ttt
if ( "abcde" .ne. a ) print *,'fail'
if ( "abcde" .ne. b ) print *,'fail'
if ( "abcde" .ne. c ) print *,'fail'
end subroutine

subroutine sub03()
allocatable :: a,b,c
character(:) :: a,b*5,c
character(:),target :: ttt*5 = "abcde"
allocate(character(5)::a,b,c)
a=ttt
b=ttt
c=ttt
if ( "abcde" .ne. a ) print *,'fail'
if ( "abcde" .ne. b ) print *,'fail'
if ( "abcde" .ne. c ) print *,'fail'
end subroutine

subroutine sub04()
character(:) :: a,b*5,c
allocatable :: a,b,c
character(:),target :: ttt*5 = "abcde"
allocate(character(5)::a,b,c)
a=ttt
b=ttt
c=ttt
if ( "abcde" .ne. a ) print *,'fail'
if ( "abcde" .ne. b ) print *,'fail'
if ( "abcde" .ne. c ) print *,'fail'
end subroutine
