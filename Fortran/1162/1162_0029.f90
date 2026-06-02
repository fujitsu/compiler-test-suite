subroutine s1
integer ,parameter :: str(1)=2
integer :: isrc
         associate (isrc =>str(1))
         block
            cSum = isrc
if (isrc.ne.2) print *,'ng 1'
!!!!isrc=1
         end block
        end associate
end
call s1

print *,'sngg862n : pass'
end

