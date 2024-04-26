program main
  real(kind=4),dimension(1:64) :: a,b,c
  call init(b,c)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,64
    call check(a(i), b(i), c(i))
  enddo
  print *, "OK"
end program main

subroutine init(b, c)
  real(kind=4),dimension(1:64) :: b, c
  real(kind=4),parameter :: xmax=1000000.0_4
  real(kind=4),parameter :: ymax=9007199254740992.0_4
  real(kind=4) :: xval, yval, xtmp, ytmp

  xval = xmax/(64-1)
  yval = ymax/(64-1)
  xtmp = 1.000001_4
  ytmp = 1.000001_4

  do i=1,64
     select case (mod(i,4_4))
     case(0)
       b(i) = xtmp
       c(i) = ytmp
     case(1)
       b(i) = -xtmp
       c(i) = ytmp
     case(2)
       b(i) = xtmp
       c(i) = -ytmp
     case(3)
       b(i) = -xtmp
       c(i) = -ytmp
     end select
     xtmp = xtmp + xval
     ytmp = ytmp + yval
  enddo
end subroutine init

subroutine check(res, inx, iny)
  real(kind=4) :: res, inx, iny, master_res
  master_res = inx ** iny
  if (((abs(res -  master_res)/abs(res)) .gt. 1.0e-7_4)) then
     print *, "NG"
  endif
end subroutine check
  


subroutine test(a,b,c)
  real(kind=4), dimension(1:64) :: a,b,c

  do i=1,64
     a(i) = b(i)**c(i)
  enddo
end subroutine test
