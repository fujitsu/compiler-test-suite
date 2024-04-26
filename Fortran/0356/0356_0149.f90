subroutine sub1()
  integer(kind=4) :: sum
  integer(kind=4),dimension(17) :: a,b
  sum = 255
  
  do i=1,17
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
     b(i) = a(i)
  enddo
  
  do i=1,17
     if (b(i).le.17) then
        sum = ior(sum, a(i))
     endif
  enddo
  
  if (sum.eq.255) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub1

subroutine sub2()
  integer(kind=8),dimension(9) :: sum
  integer(kind=8),dimension(9) :: a,b

  do i=1,9
     sum(i) = i
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
     b(i) = a(i)
  enddo
  
  do i=1,9
     if (b(i).le.9) then
        sum(6) = ior(sum(6), a(i))
     endif
  enddo
  
  if (sum(6).eq.6) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum(6)
  endif
end subroutine sub2

subroutine sub3(sum)
  integer(kind=2) :: sum
  integer(kind=2),dimension(17) :: a,b

  do i=1,17
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
     b(i) = a(i)
  enddo
  
  do i=1,17
     if (b(i).gt.17) then
        sum = ior(sum, a(i))
     endif
  enddo
  
  if (sum.eq.32767) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub3

program main
  integer(kind=2) :: sum
  sum = 255
  call sub1()
  call sub2()
  call sub3(sum)
  stop
end program main
