program main

  type A_array
     real, allocatable, dimension(:) :: array
  end type A_array
  type B_array
     real, allocatable, dimension(:) :: array
  end type B_array
  type C_array
     real, allocatable, dimension(:) :: array
  end type C_array
  type(A_array), pointer :: a_A
  type(B_array), pointer :: b_B
  type(C_array), pointer :: c_C

  integer :: n=10000,i
  real    :: rnd

  allocate(a_A,b_B,c_C)
  allocate(a_A%array(n),b_B%array(n),c_C%array(n))
  do i = 1, n
    b_B%array(i) = i
    c_C%array(i) = n-i
  end do

  a_A%array=b_B%array+c_C%array
  call random_number(rnd)
  i = rnd * n
  write(12,*) " After different add", a_A%array(i)
print *,'pass'

end program main
