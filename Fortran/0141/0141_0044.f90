subroutine s1
integer,save:: n,a(2)
n=1
a=[2,3]
write(1, '(a,z16.16)')'main n : ',loc(n)
write(1, '(a,z16.16)')'main a : ',loc(a)
!$omp task
write(1, '(a,z16.16)')'n task : ',loc(n)
write(1, '(a,z16.16)')'a task : ',loc(a)

n=11
a=[12,13]
!$omp end task
if (n/=11)print *,101,n
if (any(a/=[12,13]))print *,102,a

end
call s1
print *,'pass'
end


