function rf1()
implicit none
real*8,allocatable:: rf1
real*8,allocatable:: rf2
allocate(rf1)
 rf1 = 0.0
 return 
entry    rf2()
allocate(rf2)
 rf2 = 1.0
end function
