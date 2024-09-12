common /aaa/ x,a(2)
integer a
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(/aaa/)
a=(/10,20/)
write(1,*)(a(i),i=1,2)
!$OMP END PARALLEL
rewind 1
read(1,*) y1,y2
if( y1/= 10)print *,'error-1'
if( y2/= 20)print *,'error-2'
print *,'pass'
end
