
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
character(len=n+1) :: ch
if(len(ch) == 23) print*,'pass'
ch='hello'
if(ch/='hello') print*,101
end block

print*,'finish'
end subroutine
