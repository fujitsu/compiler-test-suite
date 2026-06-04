
module mm
contains
  integer function vadd(aa,bb)
    !$omp declare simd notinbranch
    integer,intent(in):: aa,bb
    value::aa,bb
    vadd = aa + bb
  end function vadd

  integer function vadd_m(aa,bb)
    !$omp declare simd inbranch
    integer,intent(in):: aa,bb
    value::aa,bb
    vadd_m = aa + bb
  end function vadd_m
end module mm

program declare_test
  use mm
  parameter(N=32)
  integer a(N),b(N)

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = 2
  enddo

!$omp simd
  do i=1,N
     a(i) = vadd(a(i), b(i))
  enddo
  write(6,1) a
!$omp simd
  do i=1,N
     if (i.gt.5) then
        b(i) = vadd_m(b(i), a(i))
     endif
  enddo
  write(6,1) b
  1 format(10i5)
end program declare_test
