call test1()
print *,'pass'
end

subroutine test1()
IMPLICIT NONE
integer :: i=1
         associate (isrc =>i)
         block
           character(isrc) :: cha
           cha='a'
if (isrc.ne.1) print *,'ngaaa'
if (len(cha).ne.1) print *,'ng'
if (cha/='a') print *,101,cha
         end block
        end associate
end
