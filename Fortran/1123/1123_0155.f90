module mm
  contains
    subroutine vmov(a,c)
!$omp declare simd
      real*8,intent(in):: a
      real*8,intent(out):: c
      c = a
    end subroutine vmov
end module mm

program declare_test
  use mm
  parameter(N=32)
  real*8 a(N),c(N)


  do i=1,N
     a(i) = 2
     c(i) = i
  enddo

  do i=1,N
     call vmov(a(i),c(i))
  enddo
  write(6,1) c
  1 format(8f10.3)
end program declare_test
