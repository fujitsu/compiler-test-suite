program pro
integer, parameter :: arr(2,3)=reshape([1,2,2,2,-9,6],[2,3])
integer, parameter :: res1(1)=FINDLOC([2,6,4,6], VALUE=6)
integer, parameter :: res2(1)=FINDLOC([2,6,4,6], VALUE=6, BACK = .TRUE.)
integer, parameter :: res3(1)=FINDLOC([2,6,4], VALUE=6, DIM=1)
integer, parameter :: res4(3)=FINDLOC(arr, VALUE=2, DIM=1)
integer, parameter :: res5(2)=FINDLOC(arr, VALUE=2, DIM=2)
if (res1(1)/=2) print *, 101
if (res2(1)/=4) print *, 102
if (res3(1)/=2) print *, 103
if (res4(1)/=2) print *, 104
if (res4(2)/=1) print *, 105
if (res4(3)/=0) print *, 106
if (res5(1)/=2) print *, 107
if (res5(2)/=1) print *, 108
        print *, "pass"

end        

