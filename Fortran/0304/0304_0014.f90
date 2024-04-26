subroutine init(b,c,n)
  implicit none
  integer(kind=4) :: n, i
  complex(kind=8) :: b(n)
  complex(kind=4) :: c(n)
  do i=1,n
     if (i .gt. 2) then
        b(i) = 1.0_8
        c(i) = 2.0_4
     endif
  enddo
end subroutine init
program main
  implicit none
  complex(kind=8) :: b(20) = (0.0_8, 1.0_8)
  complex(kind=4) :: c(20) = (0.0_4, 1.0_4)

  call init(b, c, 20)
  if (b(3) .ne. (1.0_8,0.0_8)) then
     print *, "NG"
  endif
  if (c(3) .ne. (2.0_4,0.0_4)) then
     print *, "NG"
  endif
  print *, "OK"
end program main
