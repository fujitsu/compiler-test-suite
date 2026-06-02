module volatile_m
  interface
     subroutine ref_volatile(a,b)
       complex(8),dimension(1:1000) :: a
       complex(8),dimension(1:1000),volatile :: b
     end subroutine ref_volatile
     subroutine def_volatile(a,b)
       complex(8),dimension(1:1000),volatile :: a
       complex(8),dimension(1:1000) :: b
     end subroutine def_volatile
  end interface
end module volatile_m

subroutine ref_volatile(a,b)
  use volatile_m
  complex(8),dimension(1:1000) :: a
  complex(8),dimension(1:1000),volatile :: b
  do i=1,1000
     a(i) = cdexp(b(i))
  enddo
end subroutine ref_volatile

subroutine def_volatile(a,b)
  use volatile_m
  complex(8),dimension(1:1000),volatile :: a
  complex(8),dimension(1:1000) :: b
  do i=1,1000
     a(i) = cdexp(b(i))
  enddo
end subroutine def_volatile

program main
  use volatile_m
  complex(8),dimension(1:1000) :: a
  complex(8),dimension(1:1000),volatile :: b
  real(8),parameter :: ans1=3615.907223063825_8
  real(8),parameter :: ans2=2800.000273717720_8
  real(8),parameter :: error=   0.0000000001_8
  
  a = cmplx(1.1,1.2)
  b = cmplx(1.3,1.4)
  call ref_volatile(a,b)
  if (abs(imag(sum(a))-ans1) .gt. error) then
     print *,"ng", imag(sum(a)), ans1
  else
     print *,"ok"
  endif
  
  a = cmplx(1.1,1.2)
  b = cmplx(1.3,1.4)
  call def_volatile(b,a)
  if (abs(imag(sum(b))-ans2) .gt. error) then
     print *,"ng", imag(sum(b)), ans2
  else
     print *,"ok"
  endif
  
  
end program
