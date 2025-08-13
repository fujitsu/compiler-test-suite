common /aaa/ x,a(2,3,4),b(2,3,4)
integer a,b
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(/aaa/)
x=1
a=2
b=3
write(12,*)a(1,1,1),b(1,1,1),a(2,3,4),b(2,3,4)
!$OMP END PARALLEL
rewind 12
read(12,*)a(1,1,1),b(1,1,1),a(2,3,4),b(2,3,4)
if (any((/a(1,1,1),b(1,1,1),a(2,3,4),b(2,3,4)/)/=(/2,3,2,3/)))print *,'error'
print *,'pass'
end
