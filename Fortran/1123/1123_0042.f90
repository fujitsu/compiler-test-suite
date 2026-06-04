
real*8 function vadd(a,b)
!$omp declare simd inbranch
  real*8,intent(in):: a,b
  value::a,b
  vadd = a + b
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

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = 2
  enddo

  s = 0
!$omp simd reduction(+:s)
  do i=1,N
     if (mask(a(i))) then
        s = s + vadd(a(i),b(i))
     endif
  enddo
  write(6,*) s
  s = 0

!$omp simd reduction(+:s)
  do i=1,N
     if (.not.mask(a(i))) then
        s = s + vadd(a(i),b(i))
     endif
  enddo
  write(6,*) s
end program declare_test
