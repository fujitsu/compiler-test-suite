program main
  real(kind=4),dimension(64) :: a
  real(kind=4) :: dest,res
      
  do i=1,2
      call init(a,res,64)
      call test(a,dest)
  enddo
  if(res .ne. dest) then
     print *, "NG"
  endif
  print *, "OK"
end program main

subroutine init(a,res,n1)
  real(kind=4),dimension(1:n1) :: a
  real(kind=4) :: res
  res = 0._4

  do i=1,n1
     a(i) = real(i,kind=4)
     res = res + real(i,kind=4)
  enddo
end subroutine init


subroutine test(a,dest)
  real(kind=4), dimension(64) :: a
  real(kind=4) :: dest,tmp
  tmp = 0._4

  do i=1,64
      tmp = tmp + a(i)
  enddo
  dest = tmp
end subroutine test
