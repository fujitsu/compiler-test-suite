
subroutine vmov(a,c)
!$omp declare simd
  real*8,intent(in):: a
  real*8,intent(out):: c
  value::a
  c = a
end subroutine vmov

program declare_test
  parameter(N=32)
  real*8 a(N),c(N)
  interface
     subroutine vmov(a,c)
       real*8,intent(in):: a
       real*8,intent(out):: c
       value::a
     end subroutine vmov
  end interface

  do i=1,N
     a(i) = 2
     c(i) = i
  enddo

  do i=1,N
     call vmov(a(i),c(i))
  enddo
  write(6,1) c
  1 format(8f10.3)
end program declare_test
