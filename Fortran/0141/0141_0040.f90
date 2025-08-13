integer:: n,a(2)
n=1
a=[2,3]
write(31, '(a,z16.16)')'main n : ',loc(n)
write(31, '(a,z16.16)')'main a : ',loc(a)
!$omp task
write(31, '(a,z16.16)')'n task : ',loc(n)
write(31, '(a,z16.16)')'a task : ',loc(a)
n=11
a=[12,13]
!$omp end task
if (n/=1) print *,101
if (any(a/=[2,3])) print *,102
print *,'pass'
end
