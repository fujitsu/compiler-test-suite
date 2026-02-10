function rf1(rarg)
implicit none
real*8,allocatable,dimension(:):: rf1
real*8,allocatable,dimension(:):: rf2
real*4 rarg
integer*4 iarg
allocate(rf1(1000))
 rf1 = rarg
 return 
entry    rf2(iarg)
allocate(rf2(1000))
 rf2 = iarg
end function
