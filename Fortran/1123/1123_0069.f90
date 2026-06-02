
real*8 function vmov(a)
!$omp declare simd
  real*8,intent(in):: a
  value::a
  vmov = a
end function vmov

program declare_test
  parameter(N=32)
  real*8 a(N),c(N)
  interface
     real*8 function vmov(a)
       real*8,intent(in):: a
       value::a
     end function vmov
  end interface

  do i=1,N
     a(i) = i
     c(i) = 2
  enddo

  do i=1,N
     c(i) = vmov(a(i))
  enddo
  write(6,1) c
  1 format(8f10.3)
end program declare_test
