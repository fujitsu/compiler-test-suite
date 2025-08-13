program main

  real, allocatable, dimension(:) :: a, b, c

  integer :: n=10000,i
  real    :: rnd

  call random_number(rnd)

  allocate(a(n),b(n),c(n))
  do i=1,n
    b(i) = i
    c(i) = n-i
  end do
  i = rnd * n
  a=b+c
  write(10,*) " After Array add", i, a(i)
print *,'pass'

end program main
