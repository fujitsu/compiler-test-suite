function rf1(rarg) result(rf)
real*8,allocatable,dimension(:):: rf
allocate(rf(1000))
 rf = rarg
 return 
entry    rf2(iarg) result(rf)
allocate(rf(1000))
 rf = iarg
end function
