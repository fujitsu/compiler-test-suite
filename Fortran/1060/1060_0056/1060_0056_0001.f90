function rf1(rarg)
implicit none
real*8,allocatable:: rf1
real*8,allocatable:: rf2
real*4 rarg
integer*4 iarg
allocate(rf1)
 rf1 = rarg
 return 
entry    rf2(iarg)
allocate(rf2)
 rf2 = iarg
end function
