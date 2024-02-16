subroutine sub(a,n)
  integer(kind=4),dimension(1:1024)::a
  integer(kind=4)::n,i
  do i=1,n
     a(i) = 0
  end do
end subroutine sub

subroutine sub2(a,n)
  integer(kind=4),dimension(1:1024)::a
  integer(kind=4)::n,i
  do i=1,n
     a(i) = 0
  end do
end subroutine sub2

subroutine sub3(a,n)
  integer(kind=4),dimension(1:1024)::a
  integer(kind=4)::n,i
  do i=1,n
     a(i) = 0
  end do
end subroutine sub3

subroutine sub4(a,n)
  integer(kind=4),dimension(1:1024)::a
  integer(kind=4)::n,i
  do i=1,n
     a(i) = 0
  end do
end subroutine sub4

subroutine sub5(a,n)
  integer(kind=4),dimension(1:1024)::a
  integer(kind=4)::n,i
  do i=1,n
     a(i) = 0
  end do
end subroutine sub5

program main
  print *, "OK"
end program main
