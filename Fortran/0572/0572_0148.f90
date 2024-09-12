program pro
implicit none
real,parameter :: arr(5)=[2.0,4.0,6.0,7.0,3.0]
logical ,parameter :: m1=.false.
logical ,parameter :: m2=.true.
real :: x1(1)=findloc(arr,3.0,m1)
real :: x2(1)=findloc(arr,3.0,m2)
if (x1(1)/=0) print *, 101
if (x2(1)/=5.0) print *, 102
        print*,"pass"
        end

