subroutine foo(a)
  complex(kind=4),dimension(10) :: a
  do i=1,10
     a(i) = (1.0_4, 2.0_4)
  enddo
end subroutine foo

subroutine bar(a)
  complex(kind=8),dimension(10) :: a
  do i=1,10
     a(i) = (1.0_8, 2.0_8)
  enddo
end subroutine bar

program main
  complex(kind=4),dimension(10) :: a4
  complex(kind=8),dimension(10) :: a8

  call foo(a4)
  call bar(a8)

  print *, "OK"
end program main
  
