program main
  real(kind=8),dimension(1:64) :: a,b
  intrinsic dexp
  call init(b)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
    call check(a(i), b(i), dexp)
  enddo
  print *, "OK"
end program main

subroutine init(b)
  real(kind=8),dimension(1:64) :: b
  real(kind=8),parameter :: inmax=709.781_8
  real(kind=8),parameter :: inmin=-708.398_8	
  real(kind=8) :: val, tmp
  val = (inmax - inmin)/(64-1)
  tmp = inmin

  do i=1,64
     b(i) = tmp
     tmp = tmp + val
  enddo
end subroutine init

subroutine check(res, in, fs)
  real(kind=8) :: res, in, fs, fsres
  external :: fs
  fsres = fs(in)
  if (((abs(res -  fsres)/abs(res)) .gt. 1.0D-15)) then
     print *, "NG"
  endif
end subroutine check
  


subroutine test(a,b)
  real(kind=8), dimension(1:64) :: a,b

  do i=1,64
     a(i) = dexp(b(i))
  enddo
end subroutine test
