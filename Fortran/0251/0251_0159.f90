
interface
subroutine s1(n)
integer :: n
end subroutine
end interface
call s1(22)
end

subroutine s1(n)
integer :: n

block
character(len=n) :: ch,ch2
if(len(ch) == 22) print*,'pass'
ch='hello'
ch2='hello'
if(ch/=ch2) print*,101
end block

print*,'finish'
end subroutine
