integer:: n,a=1
integer,save:: b
n=1
a=2
b=3
write(1, '(a,z16.16)')'main n : ',loc(n)
write(1, '(a,z16.16)')'main a : ',loc(a)
!$omp task
write(1, '(a,z16.16)')'n task : ',loc(n)
write(1, '(a,z16.16)')'a task : ',loc(a)
n=11
a=12
b=13
!$omp end task
write(1, *)n
write(1, *)a
if (n/=1) print *,101,a
if (a/=12) print *,102
if (b/=13) print *,103,b
print  *,'pass'
end


