call test()
print *,'pass'
end
subroutine test()
integer :: arr(3)
integer :: vector(3) = (/3,8,12/)
real :: whole(3,15)
whole(3,1:15)=(/(i,i=1,15)/)
if (1.eq.2)print*, whole(3,vector)
arr=whole(3,vector)
if (arr(1).ne.3) print *,'err'
if (arr(2).ne.8) print *,'err'
if (arr(3).ne.12) print *,'err'
end
