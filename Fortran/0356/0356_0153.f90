subroutine sub1(n)
  integer(kind=4) :: n
  integer(kind=4) :: sum
  integer(kind=4),dimension(n) :: a
  sum = 255

  do i=1,n
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
  enddo
  
  do i=1,n
     if (n.eq.10) then
        sum = ieor(sum, a(i))
     endif
  enddo
  
  if (sum.eq.1795) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub1

subroutine sub2(n)
  integer(kind=4) :: n
  integer(kind=4),dimension(n) :: sum
  integer(kind=4),dimension(n) :: a

  do i=1,n
     sum(i) = i
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
  enddo
  
  do i=1,n
     if (n.eq.16) then
        sum(10) = ieor(sum(10), a(i))
     endif
  enddo
  
  if (sum(10).eq.131062) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum(10)
  endif
end subroutine sub2

subroutine sub3(sum, n)
  integer(kind=4) :: n
  integer(kind=4) :: sum
  integer(kind=4),dimension(n) :: a

  do i=1,n
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
  enddo
  
  do i=1,n
     if (n.eq.20) then
        sum = ieor(sum, a(i))
     endif
  enddo
  
  if (sum.eq.2096899) then
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
