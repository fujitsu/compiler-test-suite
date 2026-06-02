subroutine vfma(a,b,rc1,c)
!$omp declare simd linear(rc1) uniform(b)
  real*8,intent(in):: a,b
  real*8,intent(out):: c
  integer*8,intent(in):: rc1
  value::a,b,rc1
  c = -a * b + rc1
end subroutine vfma

program declare_test
  parameter(N=32)
  real*8 a(N),b(N),c(N)
  integer*8 i
  interface
     subroutine vfma(a,b,rc1,c)
       real*8,intent(in):: a,b
       real*8,intent(out):: c
       integer*8,intent(in):: rc1
       value::a,b,rc1
     end subroutine vfma
  end interface

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = i
     c(i) = 2
  enddo
!$omp simd
  do i=1,N
     call vfma(a(i),b(9),i,c(i))
  enddo
  write(6,1) c
  1 format(8f10.3)
end program declare_test
