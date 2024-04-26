subroutine sub1()
  integer(kind=4) :: sum
  integer(kind=4),dimension(10) :: a
  sum = 0

  do i=1,10
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
  enddo
  
  sum = iany(a)
  
  if (sum.eq.2046) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub1

subroutine sub2()
  integer(kind=4),dimension(10,10) :: a
  integer(kind=4),dimension(10) :: sum

  do i=1,10
     do j=1,10
        if (i.ne.1) then
           a(i,j) = 2 ** i + 2
        else
           a(i,j) = 2
        endif
     enddo
  enddo

  sum = iany(a,2)

  if (sum(1).eq.2) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum(1)
  endif
end subroutine sub2

subroutine sub3(sum)
  integer(kind=4) :: sum
  integer(kind=4),dimension(6500) :: a

  do i=1,6500
     if (i.ne.1) then
        a(i) = 2 ** i + 2
     else
        a(i) = 2
     endif
  enddo
  
  sum = iany(a)
  
  if (sum.eq.-2) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub3

program main
  integer(kind=4) :: sum
  sum = 255
  call sub1()
  call sub2()
  call sub3(sum)
  stop
end program main
