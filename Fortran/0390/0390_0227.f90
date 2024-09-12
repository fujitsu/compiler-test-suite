integer, parameter :: n = 10
integer i, j, x
x = 10
!$omp do collapse(1)
do 10,i = 1, n
do 20,while(.false.)
   x = x + 1
20 continue
10 continue
print *,'pass'
end
