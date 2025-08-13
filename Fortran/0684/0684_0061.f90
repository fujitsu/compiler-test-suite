common /xx/ a,b,c
equivalence(a,a1)
equivalence(b,b1)
equivalence(c,c1)
CALL OMP_SET_NUM_THREADS(1)
a=10;c=10
a1=1
c1=3
if (abs(a-1)>0.0001)print *,"fail"
if (abs(c-3)>0.0001)print *,"fail"
!$OMP parallel private(/xx/)
a=100;c=100
a1=-1
c1=-3
write(25,*)a
write(25,*)c
!$OMP end parallel
write(24,*)a
write(24,*)c
rewind 24
read(24,*) a;if (abs(a-1)>0.0001)print *,"fail"
read(24,*) c;if (abs(c-3)>0.0001)print *,"fail"
rewind 25
print *,'pass'
end
