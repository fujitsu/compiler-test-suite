real a(10,10),b(10,10),c(10,10)
real,allocatable::d(:,:),e(:,:),f(:,:)

allocate(d(10,10),e(10,10),f(10,10))
k=0
do i=1,10
do j=1,10
  k=k+1
  b(i,j)=k
  c(i,j)=k
  e(i,j)=k
  f(i,j)=k
enddo;enddo

a=b+c
d=e*f

k=0
do i=1,10
do j=1,10
  k=k+1
  if(a(i,j) /= real(k+k))print*,'ng'
  if(d(i,j) /= real(k*k))print*,'ng'
enddo;enddo

a=b-c
d=e/f

k=0
do i=1,10
do j=1,10
  k=k+1
  if(a(i,j) /= real(k-k))print*,'ng'
  if(d(i,j) /= real(k/k))print*,'ng'
enddo;enddo

a=b*c+b
d=e*f+f

k=0
do i=1,10
do j=1,10
  k=k+1
  if(a(i,j) /= real(k*k+k))print*,'ng'
  if(d(i,j) /= real(k*k+k))print*,'ng'
enddo;enddo

print*,'pass'
end
