
real*8 function vsincos(a)
!$omp declare simd
  real*8,intent(in):: a
  value::a
  vsincos = sin(a) + cos(a)
end function vsincos

real*8 function vsin(a)
!$omp declare simd
  real*8,intent(in):: a
  value::a
  vsin = sin(a)
end function vsin

real*8 function vcos(a)
!$omp declare simd
  real*8,intent(in):: a
  value::a
  vcos = cos(a)
end function vcos

program declare_test
  parameter(N=32)
  real*8 a(N),b(N)
  interface
     real*8 function vsincos(a)
       real*8,intent(in):: a
       value::a
     end function vsincos
     real*8 function vsin(a)
       real*8,intent(in):: a
       value::a
     end function vsin
     real*8 function vcos(a)
       real*8,intent(in):: a
       value::a
     end function vcos
  end interface

!$omp simd
  do i=1,N
     a(i) = 0
     b(i) = i
  enddo

!$omp simd
  do i=1,N
     a(i) = vsincos(b(i))
  enddo
  write(6,*) a

  a=0
!$omp simd
  do i=1,N
     a(i) = vsin(b(i)) + vcos(b(i))
  enddo
  write(6,*) a

end program declare_test
