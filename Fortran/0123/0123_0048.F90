#define N 256

#define EQUAL_CHECK(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-15)

program main
  real(kind=2),dimension(1:N) :: a,b,c
  call init(b,c)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,N
    call check(a(i), b(i), c(i))
  enddo
  print *, "OK"
end program main

subroutine init(b, c)
  real(kind=2),dimension(1:N) :: b, c
  real(kind=2) :: xval, yval, xtmp, ytmp

  xval = 0.999999999999_8/(N-1)
  yval = 0.999999999999_8/(N-1)
  xtmp = 0.999999999999_8
  ytmp = 0.999999999999_8
  do i=1,N
     select case (mod(i,4_2))
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
  real(kind=2) :: res, inx, iny, master_res
  master_res = inx ** iny
  if (EQUAL_CHECK(res, master_res)) then
     print *, "NG"
  endif
end subroutine check
  
subroutine test(a,b,c)
  real(kind=2), dimension(1:N) :: a,b,c
  do i=1,N
     a(i) = b(i)**c(i)
  enddo
end subroutine test
