module w2
real,allocatable::al2(:,:)
end module
module w3
real,allocatable::al3(:,:,:)
end module
module w4
real,allocatable::al4(:,:,:,:)
end module
module w5
real,allocatable::al5(:,:,:,:,:)
end module
module w6
real,allocatable::al6(:,:,:,:,:,:)
end module
module w7
real,allocatable::al7(:,:,:,:,:,:,:)
end module
module y2
real rl2(2,1)
common /com2/rl2
end module
module y3
real rl3(3,2,1)
common /com3/rl3
end module
module y4
real rl4(1,3,2,1)
common /com4/rl4
end module
module y5
real rl5(2,1,3,2,1)
common /com5/rl5
end module
module y6
real rl6(3,2,1,3,2,1)
common /com6/rl6
end module
module y7
real rl7(1,3,2,1,3,2,1)
common /com7/rl7
end module
call sss1
print *,'pass'
end
subroutine sss1
use w2
use w3
use w4
use w5
use w6
use w7
use y2
use y3
use y4
use y5
use y6
use y7
call s2(2,1)
call s3(3,2,1)
call s4(1,3,2,1)
call s5(2,1,3,2,1)
call s6(3,2,1,3,2,1)
call s7(1,3,2,1,3,2,1)
al2=reshape((/1,2/),(/2,1/))
al3=reshape((/1,2,3,4,5,6/),(/3,2,1/))
al4=reshape((/1,2,3,4,5,6/),(/1,3,2,1/))
al5=reshape((/(i,i=1,12)/),(/2,1,3,2,1/))
al6=reshape((/(i,i=1,36)/),(/3,2,1,3,2,1/))
al7=reshape((/(i,i=1,36)/),(/1,3,2,1,3,2,1/))
rl2=reshape((/1,2/),(/2,1/))
rl3=reshape((/1,2,3,4,5,6/),(/3,2,1/))
rl4=reshape((/1,2,3,4,5,6/),(/1,3,2,1/))
rl5=reshape((/(i,i=1,12)/),(/2,1,3,2,1/))
rl6=reshape((/(i,i=1,36)/),(/3,2,1,3,2,1/))
rl7=reshape((/(i,i=1,36)/),(/1,3,2,1,3,2,1/))
if(any(al2/=rl2)) print *,'fail'
if(any(al3/=rl3)) print *,'fail'
if(any(al4/=rl4)) print *,'fail'
if(any(al5/=rl5)) print *,'fail'
if(any(al6/=rl6)) print *,'fail'
if(any(al7/=rl7)) print *,'fail'
end
subroutine s2(i1,i2)
use w2
allocate(al2(i1,i2))
end
subroutine s3(i1,i2,i3)
use w3
allocate(al3(i1,i2,i3))
end
subroutine s4(i1,i2,i3,i4)
use w4
allocate(al4(i1,i2,i3,i4))
end
subroutine s5(i1,i2,i3,i4,i5)
use w5
allocate(al5(i1,i2,i3,i4,i5))
end
subroutine s6(i1,i2,i3,i4,i5,i6)
use w6
allocate(al6(i1,i2,i3,i4,i5,i6))
end
subroutine s7(i1,i2,i3,i4,i5,i6,i7)
use w7
allocate(al7(i1,i2,i3,i4,i5,i6,i7))
end
