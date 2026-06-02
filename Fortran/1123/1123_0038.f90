
real*8 function vfma(a,b,rc1)
!$omp declare simd linear(rc1) uniform(b)
  real*8,intent(in):: a,b
  integer*8,intent(in):: rc1
  value::a,b,rc1
  vfma = a * b + rc1
end function vfma

program declare_test
  parameter(N=32)
  real*8 a(N),b(N),c(N)
  integer*8 i
  interface
     real*8 function vfma(a,b,rc1)
       real*8,intent(in):: a,b
       integer*8,intent(in):: rc1
       value::a,b,rc1
     end function vfma
  end interface

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = i
     c(i) = 0
  enddo
!$omp simd
  do i=1,N
     c(i) = vfma(a(i),b(9),i)
  enddo
  write(6,*) c
end program declare_test
