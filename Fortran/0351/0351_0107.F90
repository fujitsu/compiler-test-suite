program main
  real(kind=4),dimension(1:64) :: a,b
  intrinsic log
  call init(b)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
    call check(a(i), b(i), log)
  enddo
  print *, "OK"
end program main

subroutine init(b)
  real(kind=4),dimension(1:64) :: b
  real(kind=4),parameter :: inmax=3.402823e+38_4
  real(kind=4),parameter :: inmin=2.0_4	
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
  if (((abs(res -  fsres)/abs(res)) .gt. 1.0e-6_4)) then
     print *, "NG"
  endif
end subroutine check
  


subroutine test(a,b)
  real(kind=4), dimension(1:64) :: a,b

  do i=1,64
     a(i) = log(b(i))
  enddo
end subroutine test
