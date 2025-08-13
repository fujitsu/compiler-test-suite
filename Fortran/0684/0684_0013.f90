common /aaa/ x,a(1,1),b(1,1)
integer a,b
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(/aaa/)
x=1
a(1,1)=1
b(1,1)=2
write(14,*)((a(i,j),b(i,j),i=1,1),j=1,1)
!$OMP END PARALLEL
rewind 14
read(14,*) j1,j2
if(j1/=1)print *,'error-1'
if(j2/=2)print *,'error-2'
print *,'pass'
end
