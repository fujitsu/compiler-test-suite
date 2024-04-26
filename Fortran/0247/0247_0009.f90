integer :: arr(5) = 2,b,c
arr(1:3) = 4
do 10 concurrent (i=1:5,arr(i) .GE. 1)
b = i
do 10 concurrent (j=1:5,arr(i) .EQ. 2)
10 c= j

if (b==5 .AND. c==5) then
print *,'PASS'
endif
End

