subroutine sub1(n)
  integer(kind=4) :: n
  integer(kind=4) :: sum
  integer(kind=4),dimension(n) :: a,b
  sum = 255
  
  do i=1,n
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
     b(i) = a(i)
  enddo
  
  do i=1,n
     if (b(i).le.n) then
        sum = iand(sum, a(i))
     endif
  enddo
  
  if (sum.eq.2) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub1

subroutine sub2(n)
  integer(kind=4) :: n
  integer(kind=4),dimension(n) :: sum
  integer(kind=4),dimension(n) :: a,b

  do i=1,n
     sum(i) = i
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
     b(i) = a(i)
  enddo
  
  do i=1,n
     if (b(i).le.n) then
        sum(10) = iand(sum(10), a(i))
     endif
  enddo
  
  if (sum(10).eq.2) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum(10)
  endif
end subroutine sub2

subroutine sub3(sum, n)
  integer(kind=4) :: n
  integer(kind=4) :: sum
  integer(kind=4),dimension(n) :: a,b

  do i=1,n
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
     b(i) = a(i)
  enddo
  
  do i=1,n
     if (b(i).gt.n) then
        sum = iand(sum, a(i))
     endif
  enddo
  
  if (sum.eq.2) then
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
