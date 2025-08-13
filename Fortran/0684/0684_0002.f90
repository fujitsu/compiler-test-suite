common /aaa/ x,a(2),i
integer a
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(/aaa/)
do i=1,2
   a(i)=i*10
end do
write(7,*)a
!$OMP END PARALLEL
rewind 7
read(7,*) x1,x2
if (x1/=10)print *,'error-1'
if (x2/=20)print *,'error-2'
print *,'pass'
end
