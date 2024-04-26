integer :: arr(5) = 2
arr(1:3) = 4
do 10 concurrent (i=1:5,arr(i) .GE. 1)
print *,i
do 10 concurrent (j=1:5,arr(i) .EQ. 2)
10 print *,i,j
End
