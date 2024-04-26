subroutine sub1(n)
  integer(kind=4) :: n
  integer(kind=4) :: sum
  sum = 255

  do i=1,n
     sum = ieor(sum, 2)
  enddo
  
  if (sum.eq.255) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub1

subroutine sub2(n)
  integer(kind=4) :: n
  integer(kind=4),dimension(n) :: sum

  do i=1,n
     sum(i) = i
  enddo
  
  do i=1,n
     sum(10) = ieor(sum(10), 2)
  enddo
  
  if (sum(10).eq.10) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum(10)
  endif
end subroutine sub2

subroutine sub3(sum, n)
  integer(kind=4) :: n
  integer(kind=4) :: sum

  do i=1,n
     sum = ieor(sum, 2)
  enddo
  
  if (sum.eq.255) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub3

program main
  integer(kind=4) :: sum
  sum = 255
  call sub1(10)
  call sub2(16)
  call sub3(sum,20)
  stop
end program main
