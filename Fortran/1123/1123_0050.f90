
integer function linear_ref_test(a,p)
!$omp declare simd linear(ref(p))
  real*8,intent(in):: a
  integer,intent(in):: p
  linear_ref_test = a + p
end function linear_ref_test
integer function linear_uval_test(a,p)
!$omp declare simd linear(ref(a)) linear(uval(p))
  real*8,intent(in):: a
  integer,intent(in):: p
  linear_uval_test = a + p
end function linear_uval_test
integer function linear_val_test(a,p)
!$omp declare simd linear(val(p):1)
  real*8,intent(in):: a
  integer,intent(in):: p
  linear_val_test = a + p
end function linear_val_test

program declare_test
  parameter(N=32)
  real*8 a(N),x(N),y(N),z(N)
  interface
     integer function linear_ref_test(a,p)
       real*8,intent(in):: a
       integer,intent(in):: p
     end function linear_ref_test
     integer function linear_uval_test(a,p)
       real*8,intent(in):: a
       integer,intent(in):: p
     end function linear_uval_test
     integer function linear_val_test(a,p)
       real*8,intent(in):: a
       integer,intent(in):: p
     end function linear_val_test
  end interface

!$omp simd
  do i=1,N
     a(i) = i*2
     x(i) = 0
     y(i) = 0
     z(i) = 0
  enddo
  m=1
!$omp simd
  do i=1,N
     x(i) = linear_ref_test(a(i),i)
     y(i) = linear_uval_test(a(i),i)
     z(i) = linear_val_test(a(i),i)
  enddo
  write(6,1) x
  write(6,1) y
  write(6,1) z
  1 format(8f8.3)
end program declare_test
