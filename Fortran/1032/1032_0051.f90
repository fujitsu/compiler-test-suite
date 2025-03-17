program main

  type box_type
    real, allocatable, dimension(:) :: a, b, c 
  end type box_type
  type(box_type) :: box

  integer :: n=10000,i
  real    :: rnd

  allocate(box%a(n),box%b(n),box%c(n))

  do i=1,n
    box%b(i) = i
    box%c(i) = n-i
  end do

  box%a=box%b+box%c

  call random_number(rnd)
  i = rnd * n
  write(1,*) i, box%a(i)
print *,'pass'

end program main
