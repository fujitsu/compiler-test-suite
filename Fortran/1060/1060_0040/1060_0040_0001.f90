function rf1()
implicit none
save
real*8,pointer,dimension(:):: rf1
real*8,pointer,dimension(:):: rf2
allocate(rf1(1000))
 rf1 = 0.0
 return 
entry    rf2()
allocate(rf1(1000))
 rf2 = 1.0
end function
