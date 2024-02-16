complex(kind=8),parameter :: cmp1(2) = (2,4)
        real :: qq = cmp1(1)%re
        real :: rr = cmp1(1)%im
        if(qq .ne. 2)print*,101,qq
        if(rr .ne. 4)print*,102,rr
        print*,"PASS"
        end

