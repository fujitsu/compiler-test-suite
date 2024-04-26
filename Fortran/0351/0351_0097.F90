program main
  real(kind=4),dimension(1:64) :: a,b
  intrinsic exp
  call init(b)
  do i=1,2
     call test(a,b)
  enddo
  do i=2,64
    call check(a(i), b(i), exp)
  enddo
  print *, "OK"
end program main

subroutine init(b)
  real(kind=4),dimension(1:64) :: b
  real(kind=4),parameter :: inmax= 88.721_4
  real(kind=4),parameter :: inmin=-88.028_4
  real(kind=4) :: val, tmp
  val = (inmax - inmin)/(64-1)
  tmp = inmin

  do i=1,64
     b(i) = tmp
     tmp = tmp + val
  enddo
end subroutine init

subroutine check(res, in, fs)
  real(kind=4) :: res, in, fs, fsres
  external :: fs
  fsres = fs(in)
  if (((abs(res -  fsres)/abs(res)) .gt. 1.0E-6)) then
     print *, "NG"
  endif
end subroutine check
  


subroutine test(a,b)
  real(kind=4), dimension(1:64) :: a,b

  do i=1,64
     a(i) = exp(b(i))
  enddo
end subroutine test
