complex(kind=16),parameter :: cmp1 = (2,4),cmp2(3)=[(1,2),(3,4),(5,6)]
        real :: qq = cmp1%re
        real :: rr = cmp1%im
        real :: qq2 = cmp2(1)%re
        real :: rr2 = cmp2(1)%im
        real :: qq3 = cmp2(2)%re
        real :: rr3 = cmp2(2)%im
        real :: qq4 = cmp2(3)%re
        real :: rr4 = cmp2(3)%im
        if(qq .ne. 2)print*,101
        if(rr .ne. 4)print*,102
        if(qq2 .ne. 1)print*,103
        if(rr2 .ne. 2)print*,104
        if(qq3 .ne. 3)print*,105
        if(rr3 .ne. 4)print*,106
        if(qq4 .ne. 5)print*,107
        if(rr4 .ne. 6)print*,108
        print*,"PASS"
        end

