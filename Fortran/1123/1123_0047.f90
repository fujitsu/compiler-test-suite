
real*8 function mask_vadd(a,b, L)
!$omp declare simd inbranch
  real*8,intent(in):: a,b
  logical,intent(in):: L
  value::a,b,L
  mask_vadd = 0
  if (L) then
     mask_vadd = a + b
  endif
end function mask_vadd

logical function mask(a)
!$omp declare simd notinbranch
  real*8,intent(in):: a
  value::a
  mask = a .gt. 10
end function mask

program declare_test
  parameter(N=32)
  real*8 a(N),b(N),c(N)
  interface
     real*8 function mask_vadd(a,b, L)
       real*8,intent(in):: a,b
       logical,intent(in):: L
       value::a,b,L
     end function mask_vadd

     logical function mask(a)
       real*8,intent(in):: a
       value::a
     end function mask
  end interface
  c=0

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = 2
  enddo

!$omp simd
  do i=1,N
     if (mask(a(i))) then
        c(i) =  mask_vadd(a(i), b(i), mask(a(i)+1))
     endif
  enddo
  write(6,1) c

  c=0
!$omp simd
  do i=1,N
     if (.not.mask(a(i))) then
        c(i) =  mask_vadd(a(i), b(i), .not.mask(a(i)+1))
     endif
  enddo
  write(6,*)
  write(6,1) c

  1 format(8f8.3)

end program declare_test
