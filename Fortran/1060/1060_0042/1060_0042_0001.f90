function rf1() result(rf)
real*8,pointer,dimension(:):: rf
allocate(rf(1000))
 rf = 0.0
 return 
entry    rf2() result(rf)
allocate(rf(1000))
 rf = 1.0
end function
