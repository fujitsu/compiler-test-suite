subroutine sub1(n)
  integer(kind=4) :: n
  integer(kind=4) :: sum
  integer(kind=4),dimension(3500) :: a
  sum = 255

  do i=1,3500
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
  enddo
  
  do i=1,3500
     if (n.eq.3500) then
        sum = ior(sum, a(i))
     endif
  enddo
  
  if (sum.eq.-1) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub1

subroutine sub2(n)
  integer(kind=4) :: n
  integer(kind=8),dimension(2000) :: sum
  integer(kind=8),dimension(2000) :: a

  do i=1,2000
     sum(i) = i
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
  enddo
  
  do i=1,2000
     if (n.eq.2000) then
        sum(10) = ior(sum(10), a(i))
     endif
  enddo
  
  if (sum(10).eq.-2) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum(10)
  endif
end subroutine sub2

subroutine sub3(sum, n)
  integer(kind=4) :: n
  integer(kind=2) :: sum
  integer(kind=2),dimension(6500) :: a

  do i=1,6500
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
  enddo
  
  do i=1,6500
     if (n.eq.6500) then
        sum = ior(sum, a(i))
     endif
  enddo
  
  if (sum.eq.-1) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub3

program main
  integer(kind=2) :: sum
  sum = 255
  call sub1(3500)
  call sub2(2000)
  call sub3(sum,6500)
  stop
end program main
