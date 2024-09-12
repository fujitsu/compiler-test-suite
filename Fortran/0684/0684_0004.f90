common /aaa/ x,a(2),i
integer a
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(/aaa/)
a=(/10,20/)
i=100
do i=1,2
write(1,*)a(i)
end do
write(1,*)i
!$OMP END PARALLEL
rewind 1
read(1,*) k1
read(1,*) k2
if (k1/=10)print *,'error-1'
if (k2/=20)print *,'error-2'
read(1,*) k1
if (k1/=3)print *,'error-3'
print *,'pass'
end
