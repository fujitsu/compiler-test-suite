program pro
implicit none
real,parameter :: arr(3:2)=3.0
real :: x1(1)=findloc(arr,3.0)
real :: x2(1)=findloc(arr,3.0, DIM=1)
        if (x1(1)/=0) print *, 101
        if (x2(1)/=0) print *, 101
        print*,"pass"
        end

