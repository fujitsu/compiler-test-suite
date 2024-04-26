  real :: x
  integer :: y(10), k
  y = -1
  call random_seed(SIZE=k)
  write (1,*) "size is:",k
do i=1,5
  call random_number(x)
  write (2,*) x
  call random_number(x)
  write (2,*) x
end do
  call random_seed(put=y(1:10))
do i=1,5
  call random_number(x)
  write (21,*) x
  call random_number(x)
  write (21,*) x
end do
rewind 2
rewind 21
kx=0
do i=1,10
read(2,*)x;if (x/=0.0)kx=kx+1
end do
if (kx==0)print *,'error-1'
kx=0
do i=1,10
read(21,*)x;if (x/=0.0)kx=kx+1
end do
if (kx==0)print *,'error-2'
print *,'pass'
  end
