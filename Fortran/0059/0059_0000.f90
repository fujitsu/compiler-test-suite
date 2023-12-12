real(2) :: r1,r2=0
real(2) :: r1arr(2),r2arr(2)=0
complex(kind=2) :: c1,c2=0
complex(kind=2) :: c1arr(2),c2arr(2)=0
r1=r2
r2arr(1)=33.3
r1arr=r2arr
c1=c2
c2arr(1)=(33.3,44.4)
c1arr=c2arr

print *,'pass'
End

