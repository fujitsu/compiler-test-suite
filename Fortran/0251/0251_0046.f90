
interface
subroutine s1()
end subroutine
end interface
call s1()
end

subroutine s1()
block
character(len=22) :: ch
if(len(ch) == 22) print*,'pass'
ch='hello'
if(ch/='hello') print*,101
end block

print*,'finish'
end subroutine
