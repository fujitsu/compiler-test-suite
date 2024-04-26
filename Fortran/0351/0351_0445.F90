program main
  integer(kind=4),dimension(64) :: a
  integer(kind=4) :: dest,res
  integer(kind=4),dimension(64) :: b
      
  do i=1,2
      call init(a,b,res,64)
      call test(a,b,dest)
  enddo
  if(res .ne. dest) then
         print *, "NG"
  endif

  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  integer(kind=4),dimension(1:n1) :: a
  integer(kind=4) :: res
  integer(kind=4),dimension(1:n1) :: b
  res = 0_4

  do i=1,n1
    a(i) = i
    b(i) = i
    if (i .gt. 64/2) then
      res = res + i
    endif 
  enddo
end subroutine init


subroutine test(a,b,dest)
  integer(kind=4), dimension(64) :: a
  integer(kind=4) :: dest,tmp
  integer(kind=4), dimension(64) :: b

  tmp = 0_4

  do i=1,64
    if (b(i) .gt. 64/2) then 
      tmp = tmp + a(i)
    endif
  enddo
  dest = tmp
end subroutine test
