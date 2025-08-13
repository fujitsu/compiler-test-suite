common /aaa/ x,a(2)
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(a)
a=(/10,20/)
write(3,*)(a(i),i=1,2)
!$OMP END PARALLEL
rewind 3
read(3,*) x1,x2
if (x1/=10)print *,'error-1'
if (x2/=20)print *,'error-2'
print *,'pass'
end
