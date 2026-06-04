real*8 function vfma(a,b,t, rr)
!$omp declare simd notinbranch linear(rr:-2)
  real*8,intent(in):: a,b,t
  integer*8,intent(in)::rr
  value::a,b,t,rr
  vfma = a + b * t + rr
end function vfma

program declare_test
  parameter(N=32)
  real*8 a(N),b(N),c(N),t
  integer*8 rr
  interface
     real*8 function vfma(a,b,t,rr)
       real*8,intent(in):: a,b,t
       integer*8,intent(in)::rr
       value::a,b,t,rr
     end function vfma
  end interface

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = 2
  enddo

  rr=20
!$omp simd private(t) reduction(-:rr)
  do i=1,N
     t = a(i) + 2
     c(i)= vfma(a(i), b(i)+1, t, rr)
     rr = rr - 2
  enddo
  write(6,1) c
  write(6,*) rr

  1 format(8f8.3)

end program declare_test
