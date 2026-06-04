
real*8 function vadd(a,b)
  !$omp declare simd inbranch
  real*8,intent(in):: a,b
  real*8 t
  value::a,b
  t = 0
  do i=1,6
     t = t + (i-3)
  enddo
  vadd = a + b - t
end function vadd

logical function mask(a)
!$omp declare simd notinbranch
  real*8,intent(in):: a
  value::a
  mask = a .gt. 10
end function mask

program declare_test
  parameter(N=32)
  real*8 a(N),b(N),s
  interface
     real*8 function vadd(a,b)
       real*8,intent(in):: a,b
       value::a,b
     end function vadd

     logical function mask(a)
       real*8,intent(in):: a
       value::a
     end function mask
  end interface

!$omp declare reduction(umax:real*8:omp_out=max(omp_out,omp_in)) &
!$omp initializer(omp_priv=3)
!$omp declare reduction(umax2:real*8:omp_out=max(omp_out,omp_in)) &
!$omp initializer(omp_priv=3)

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = 2
  enddo

  s = 0
!$omp simd reduction(umax:s)
  do i=1,N
     if (mask(a(i))) then
        s = max(s ,vadd(a(i),b(i)))
     endif
  enddo
  write(6,*) s

  s = 0
!$omp simd reduction(umax2:s)
  do i=1,N
     if (.not.mask(a(i))) then
        s = max(s ,vadd(a(i),b(i)))
     endif
  enddo
  write(6,*) s

end program declare_test
