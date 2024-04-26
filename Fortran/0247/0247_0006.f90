integer :: sum = 0
do 10 concurrent (i=1:10,i>5)
associate (a=>i)
if (a==10) then
print *,'PASS'
endif
end associate
10 sum = sum + i
if (sum == 40)then
print *,'PASS'
endif
End

