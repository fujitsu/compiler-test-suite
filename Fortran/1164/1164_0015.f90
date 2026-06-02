call test1()
call test2()
call test3()
call test4()
call test5()
call test6()
print *,'pass'
end

subroutine test1()
IMPLICIT NONE
integer :: i=1
integer :: arr(10)=(/1,2,3,4,5,6,7,8,9,10/)
         associate (isrc =>arr(int(i)))
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa 1'
if (size(cSum).ne.1) print *,'ng'
cSum=3
if (any(cSum/=3)) print *,1001
         end block
        end associate
end
subroutine test2()
IMPLICIT NONE
integer :: iii=1
integer :: arr(10)=(/1,2,3,4,5,6,7,8,9,10/)
         associate (isrc =>arr(iii))
           iii=3
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa 1'
if (size(cSum).ne.1) print *,'ng'
cSum=3
if (any(cSum/=3)) print *,1002
         end block
        end associate
end

subroutine test3()
IMPLICIT NONE
integer :: iii=1
integer :: arr(10)=(/1,2,3,4,5,6,7,8,9,10/)
         associate (isrc =>arr(int(iii)))
           iii=3
isrc=2
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.2) print *,'ngaaa 1'
if (size(cSum).ne.2) print *,'ng 3'
cSum=3
if (any(cSum/=3)) print *,1003
         end block
        end associate
end
subroutine test4()
IMPLICIT NONE
integer :: iii=1
integer :: arr(10)=(/1,2,3,4,5,6,7,8,9,10/)
         associate (isrc =>arr(3  ))
           iii=3;iii=iii
isrc=2
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.2) print *,'ngaaa 1'
if (size(cSum).ne.2) print *,'ng 4'
cSum=3
if (any(cSum/=3)) print *,1004
         end block
        end associate
end
subroutine test5()
IMPLICIT NONE
integer :: iii=1
integer :: arr(10)=(/1,2,3,4,5,6,7,8,9,10/)
         associate (isrc =>arr(iii+1))
           iii=3
isrc=2
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.2) print *,'ngaaa 1'
if (size(cSum).ne.2) print *,'ng 5'
cSum=3
if (any(cSum/=3)) print *,1005
         end block
        end associate
end
subroutine test6()
IMPLICIT NONE
integer :: iii=1
integer :: arr(10)=(/1,2,3,4,5,6,7,8,9,10/)
         associate (isrc =>arr(iii))
           iii=3
         block
           real :: cSum(isrc)
isrc=2
            cSum = isrc
            cSum = cSum
if (isrc.ne.2) print *,'ngaaa 1'
if (size(cSum).ne.1) print *,'ng 6'
cSum=3
if (any(cSum/=3)) print *,1006
         end block
        end associate
end
