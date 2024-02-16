module m1
complex(kind=16),parameter :: cmp1 = (2,4)
complex(kind=8),parameter :: cmp2 = (3,7)
end module m1

use m1
        real :: qq = cmp1%re
        real :: rr = cmp1%im
        real :: qq2 = cmp2%re
        real :: rr2 = cmp2%im

        if(qq .ne. 2)print*,101
        if(rr .ne. 4)print*,102
        if(qq2 .ne. 3)print*,1011
        if(rr2 .ne. 7)print*,1022
        print*,"PASS"
        end

