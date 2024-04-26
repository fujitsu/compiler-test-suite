integer:: n
n=1
write(1, '(a,z16.16)')'main n : ',loc(n)
!$omp task
write(1, '(a,z16.16)')'n task : ',loc(n)
n=11
!$omp end task
if (n/=1) print *,102
print *,'pass'
end


