
complex*8 function vfma(a,b,rc1)
!$omp declare simd linear(rc1) uniform(b)
  complex*8,intent(in):: a,b
  integer,intent(in):: rc1
  value::a,b,rc1
  vfma = a * b + rc1
end function vfma

program declare_test
  parameter(N=32)
  complex*8 a(N),b(N),c(N)
  interface
     complex*8 function vfma(a,b,rc1)
       complex*8,intent(in):: a,b
       integer,intent(in):: rc1
       value::a,b,rc1
     end function vfma
  end interface

!$omp simd linear(i:1)
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
