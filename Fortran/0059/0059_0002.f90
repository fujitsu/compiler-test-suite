real(2) :: r1
real(2),allocatable :: r2
complex(kind=2) :: c1
complex(kind=2),allocatable :: c2
allocate(r2)
allocate(c2)
r2=0
c2=(0.0,0.0)
r1=r2
c1=c2
print *,'pass'
End

