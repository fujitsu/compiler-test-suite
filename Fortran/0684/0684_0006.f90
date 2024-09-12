common /aaa/ x,a(2,3,4),b(2,3,4)
integer 	xa(2,3,4),xb(2,3,4)
integer a,b
a=reshape((/(k*10,k=1,24)/),(/2,3,4/))
b=reshape((/(k*10,k=1,24)/),(/2,3,4/))
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(/aaa/)
x=100
a=reshape((/(k,k=1,24)/),(/2,3,4/))
b=reshape((/(k,k=1,24)/),(/2,3,4/))
write(1,*)(((a(i,j,k),b(i,j,k),i=1,2),j=1,3),k=1,4)
write(1,*)x
!$OMP END PARALLEL
rewind 1
read(1,*) (((xa(i,j,k),xb(i,j,k),i=1,2),j=1,3),k=1,4)
if (any(a/=xa*10))print *,'error-1'
if (any(b/=xb*10))print *,'error-2'
read(1,*) z
if (   (z/=100))print *,'error-3'
print *,'pass'

end
