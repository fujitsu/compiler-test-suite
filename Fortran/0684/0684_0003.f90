common /aaa/ x,a(2),i
integer a
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(/aaa/)
a=(/10,20/)
i=100
write(8,*)(a(i),i=1,2)
write(8,*)i
!$OMP END PARALLEL
rewind 8
read(8,*) k1,k2
if (k1/=10)print *,'error-1'
if (k2/=20)print *,'error-2'
read(8,*) k1
if (k1/=3)print *,'error-3'
print *,'pass'
end
