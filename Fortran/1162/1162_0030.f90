subroutine s1
integer ,parameter :: str(1)=2
integer :: isrc
         associate (isrc =>str(1))
         block
           real :: cSum(isrc)
            cSum = isrc
if (isrc.ne.2) print *,'ng 1'
if (size(cSum).ne.2) print *,'ng'
if (any(cSum/=2)) print *,9001
         end block
        end associate
end
subroutine s2
integer  :: xtr(1)=2
integer :: isrc
         associate (isrc =>xtr(1))
         block
           real :: cSum(isrc)
            cSum = isrc
if (isrc.ne.2) print *,'ng 1'
if (size(cSum).ne.2) print *,'ng'
if (any(cSum/=2)) print *,9001
         end block
        end associate
end
call s1
call s2

print *,'sngg863n : pass'
end

