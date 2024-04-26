program main
  complex*8, dimension(5) :: phi = (2.0, 2.0)
  
  call geop(phi, 5)
  
  write(*,*) phi
end program main

subroutine geop(phi, mx)
  integer :: mx
  complex*8, dimension(mx) :: phi
  
  phi(1) = 1.0
end subroutine geop
