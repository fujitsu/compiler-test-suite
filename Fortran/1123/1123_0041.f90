
complex*8 function vadd(a,b)
!$omp declare simd inbranch
  complex*8,intent(in):: a,b
  value::a,b
  vadd = a + b
end function vadd

logical function mask(a)
!$omp declare simd notinbranch
  complex*8,intent(in):: a
  value::a
  mask = a .eq. 10
end function mask

program declare_test
  parameter(N=32)
  complex*8 a(N),b(N),s
  interface
     complex*8 function vadd(a,b)
       complex*8,intent(in):: a,b
       value::a,b
     end function vadd

     logical function mask(a)
       complex*8,intent(in):: a
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
