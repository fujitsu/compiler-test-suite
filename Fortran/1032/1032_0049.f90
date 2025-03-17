program main

  type allocatable_array
     real, allocatable, dimension(:) :: array
  end type allocatable_array
  type(allocatable_array), pointer :: a_alloc,b_alloc,c_alloc     

  integer :: n=10000,i
  real    :: rnd

  call random_number(rnd)

  allocate(a_alloc,b_alloc,c_alloc)
  allocate(a_alloc%array(n),b_alloc%array(n),c_alloc%array(n))  
  do i=1,n
    b_alloc%array(i) = i
    c_alloc%array(i) = n-i
  end do  
  call random_number(rnd)
  a_alloc%array=b_alloc%array+c_alloc%array
  i = rnd * n
  write(1,*) " After same add", i,a_alloc%array(i)
print *,'pass'

end program main
