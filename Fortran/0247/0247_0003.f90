integer :: sum = 0
do 10 concurrent (i=1:10,i>5)
10 sum = sum + i
if (sum == 40)then
print *,'PASS'
endif
End

