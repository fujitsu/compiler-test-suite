call test1()
call test2()
call test3()
call test4()
call test5()
call test6()
print *,'pass'
end

subroutine test1()
!IMPLICIT NONE
integer :: i=1
         associate (isrc =>i)
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
         end block
        end associate
end
subroutine test2()
!IMPLICIT NONE
integer :: i=1
         associate (isrc =>(i))
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
         end block
        end associate
end
subroutine test3()
!IMPLICIT NONE
integer :: i=1
         associate (isrc =>+i)
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
         end block
        end associate
end
subroutine test4()
!IMPLICIT NONE
integer :: i=-1
         associate (isrc =>-i)
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
         end block
        end associate
end
subroutine test5()
!IMPLICIT NONE
integer :: i=1
         associate (isrc =>i)
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
         end block
        end associate
end
subroutine test6()
!IMPLICIT NONE
integer :: i=0
         associate (isrc =>1+i)
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
         end block
        end associate
end
