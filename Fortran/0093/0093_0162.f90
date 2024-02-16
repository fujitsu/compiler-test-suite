complex(kind=16)  :: ii = (1.0,7.54)
real::sum=0

ABC: do 20 while (ii%re .le. 5)
sum = sum + ii%re
ii%re = ii%re + 1
20   end do ABC
if(sum .ne. 15) print*,101
print*,"PASS"

end
