print *,'pass'
end
subroutine sub()
real*4,dimension(100):: com2r
real*8,dimension(100):: com2d,d1
common/com/com2r,com2d
d1=sqrt(com2d)
print*,d1
end

