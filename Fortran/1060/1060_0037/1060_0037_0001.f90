function rf1()
implicit none
real*8,allocatable,dimension(:):: rf1
real*8,allocatable,dimension(:):: rf2
allocate(rf1(1000))
 rf1 = 0.0
 return 
entry    rf2()
allocate(rf2(1000))
 rf2 = 1.0
end function
