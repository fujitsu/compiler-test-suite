call test1()
call test2()
call test3()
call test4()
call test5()
call test6()
print *,'pass'
end

subroutine test6()
!IMPLICIT NONE
integer :: i=1
         associate (isrc =>i)
         block
           real :: cSum(isrc+0)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,106,cSum(1)
         end block
        end associate
end
subroutine test1()
!IMPLICIT NONE
integer :: i=1
         associate (isrc =>i)
         block
           real :: cSum(0+isrc+0)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,101,cSum(1)
         end block
        end associate
end
subroutine test2()
!IMPLICIT NONE
integer :: i=1,j=0
         associate (isrc =>i)
         block
           real :: cSum(1+isrc-1+j)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,102,cSum(1)
         end block
        end associate
end
subroutine test3()
!IMPLICIT NONE
integer :: i=1
j=0
         associate (isrc =>i)
         block
           real :: cSum(j+j+j+j+isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,103,cSum(1)
         end block
        end associate
end

subroutine test4()
!IMPLICIT NONE
integer :: i=1
j=0
         associate (isrc =>i)
         block
           real :: cSum(j+j+j+j+isrc+j+j+j+j)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,104,cSum(1)
         end block
        end associate
end
subroutine test5()
!IMPLICIT NONE
integer :: i=1
         associate (isrc =>i)
j=0
         block
           real :: cSum(j+isrc+j+j+j)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,105,cSum(1)
         end block
        end associate
end
