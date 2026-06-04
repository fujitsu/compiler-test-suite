subroutine sub1(n)
  integer(kind=4) :: n
  logical(kind=4) :: sum
  logical(kind=4),dimension(n) :: a
  sum = .true.
  a = .true.
  a(n) = .false.

  do i=1,n
     sum = sum .or. a(i)
  enddo

  if (sum.eqv..true.) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub1

subroutine sub2(n)
  integer(kind=4) :: n
  logical(kind=4),dimension(n) :: sum
  logical(kind=4),dimension(n) :: a

  sum = .true.
  a = .true.
  a(n) = .false.

  do i=1,n
     sum(10) = sum(10) .or. a(i)
  enddo

  if (sum(10).eqv..true.) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum(10)
  endif
end subroutine sub2

subroutine sub3(sum, n)
  integer(kind=4) :: n
  logical(kind=4) :: sum
  logical(kind=4),dimension(n) :: a

  a = .true.
  a(n) = .false.

  do i=1,n
     sum = sum .or.  a(i)
  enddo

  if (sum.eqv..true.) then
     print*, "test1 OK"
  else
     print*, "test1 NG"
     print*, sum
  endif
end subroutine sub3

program main
  logical(kind=4) :: sum
  sum = .true.
  call sub1(10)
  call sub2(16)
  call sub3(sum,20)
  stop
end program main
