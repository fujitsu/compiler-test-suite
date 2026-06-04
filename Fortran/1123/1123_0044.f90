
real*4 function vfma(a,b,rc1)
!$omp declare simd linear(rc1) simdlen(16)
!$omp declare simd linear(rc1) simdlen(8)
!$omp declare simd linear(rc1) simdlen(4)
  real*4,intent(in):: a
  real*4,intent(in):: b
  integer,intent(in):: rc1
  value::a,b,rc1
  vfma = a * b + rc1
end function vfma

program declare_test
  parameter(N=32)
  real*4 a(N),c(N)
  real*4 b(N)
  interface
     real*4 function vfma(a,b,rc1)
       real*4,intent(in):: a
       real*4,intent(in):: b
       integer,intent(in):: rc1
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
     c(i) = vfma(a(i),b(i),i)
  enddo
  write(6,*) c
end program declare_test
