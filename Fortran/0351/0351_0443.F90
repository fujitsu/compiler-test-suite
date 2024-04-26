program main
  integer(kind=4),dimension(64) :: a
  integer(kind=4) :: dest,res
      
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
  integer(kind=4),dimension(1:n1) :: a
  integer(kind=4) :: res
  res = 0_4

  do i=1,n1
     a(i) = i
     res = res + i
  enddo
end subroutine init


subroutine test(a,dest)
  integer(kind=4), dimension(64) :: a
  integer(kind=4) :: dest,tmp
  tmp = 0_4

  do i=1,64
      tmp = tmp + a(i)
  enddo
  dest = tmp
end subroutine test
