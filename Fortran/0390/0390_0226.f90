integer, parameter :: n = 10
integer i, j, x
x = 10
!$omp do collapse(1)
do 10,i = 1, n
forall(j = 1: n)
   x = x + 1
end forall
10 continue
print *,'pass'
end
