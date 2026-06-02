module dtan_volatile_m
  interface
     subroutine ref_volatile(a,b)
       real(8),dimension(1:1000) :: a
       real(8),dimension(1:1000),volatile :: b
     end subroutine ref_volatile
     subroutine def_volatile(a,b)
       real(8),dimension(1:1000),volatile :: a
       real(8),dimension(1:1000) :: b
     end subroutine def_volatile
  end interface
end module dtan_volatile_m

subroutine ref_volatile(a,b)
  use dtan_volatile_m
  real(8),dimension(1:1000) :: a
  real(8),dimension(1:1000),volatile :: b
  do i=1,1000
     a(i) = dtan(b(i))
  enddo
end subroutine ref_volatile

subroutine def_volatile(a,b)
  use dtan_volatile_m
  real(8),dimension(1:1000),volatile :: a
  real(8),dimension(1:1000) :: b
  do i=1,1000
     a(i) = dtan(b(i))
  enddo
end subroutine def_volatile

program main
  use dtan_volatile_m
  real(8),dimension(1:1000) :: a
  real(8),dimension(1:1000),volatile :: b
  real(8),parameter :: ans1=2572.151985283825_8
  real(8),parameter :: ans2=1964.759773126782_8
  real(8),parameter :: error=   0.0000000001_8
  
  a = 1.1
  b = 1.2
  call ref_volatile(a,b)
  if (abs(sum(a)-ans1) .gt. error) then
     print *,"ng", sum(a), ans1
  else
     print *,"ok"
  endif
  
  a = 1.1
  b = 1.2
  call def_volatile(b,a)
  if (abs(sum(b)-ans2) .gt. error) then
     print *,"ng", sum(b), ans2
  else
     print *,"ok"
  endif
  
  
end program main
