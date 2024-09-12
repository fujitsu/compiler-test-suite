integer, parameter :: N=10
complex a(N),c
real    b(N)
data c/(1.0,1.0)/,b/N*1.0/
do i=1,N
  a(i)=c*b(i)/4.0
end do
print*,a(1)
end
