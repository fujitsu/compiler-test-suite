subroutine common_init
  real(kind=4),dimension(1:1001)::a
  real(kind=8),dimension(1:1001)::b
  common /mydata/ a,b
  
  do i=1,1001
     a(i) = i
     b(i) = i+1
  end do
end subroutine common_init

program main
  call common_init
  print *, "OK"
end program main

