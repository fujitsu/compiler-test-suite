integer :: sum = 0
do 10 concurrent (i=1:10,i>5)
 sum = sum + i
10 continue
if (sum == 40)then
print *,'PASS'
endif
End

