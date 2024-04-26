subroutine s1(n)
integer :: n

block
character(len=n) :: ch
if(len(ch) == 22) print*,'pass'
ch='hello'
if(ch/='hello') print*,101
end block

print*,'finish'
end subroutine

call s1(22)
end
