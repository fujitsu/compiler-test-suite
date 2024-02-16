module m1
complex,parameter :: cmp1 = (2,4)
end module m1

use m1
        real :: qq = cmp1%re
        real :: rr = cmp1%im

        if(qq .ne. 2)print*,101
        if(rr .ne. 4)print*,102
        print*,"PASS"
        end

