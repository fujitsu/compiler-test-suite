
real*8 function vfma(a,b,rc1)
!$omp declare simd linear(rc1) uniform(b)
  real*8,intent(in):: a,b
  integer,intent(in):: rc1
  value::a,b,rc1
  vfma = a * b + rc1
end function vfma

program declare_test
  parameter(N=32)
  TYPE STR
     real*8 a(N),b(N),c(N)
  END type STR
  TYPE(STR) STR_DATA

  interface
     real*8 function vfma(a,b,rc1)
       real*8,intent(in):: a,b
       integer,intent(in):: rc1
       value::a,b,rc1
     end function vfma
  end interface

!$omp simd linear(i:1)
  do i=1,N
     STR_DATA%a(i) = i
     STR_DATA%b(i) = i
     STR_DATA%c(i) = 0
  enddo
!$omp simd
  do i=1,N
     STR_DATA%c(i) = vfma(STR_DATA%a(i),STR_DATA%b(9),i)
  enddo
  write(6,*) STR_DATA%c
end program declare_test
