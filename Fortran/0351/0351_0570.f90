subroutine sub1(a,n)
  real(8),dimension(1:n) :: a

  do i=1,9
     a(i) = 1.
  enddo
end subroutine sub1

subroutine sub2(a,n)
  real(8),dimension(1:n) :: a

  do i=1,10
     a(i) = 1.
  enddo
end subroutine sub2

subroutine sub3(a,n)
  real(8),dimension(1:n) :: a

  do i=1,11
     a(i) = 1.
  enddo
end subroutine sub3

subroutine sub4(a,n)
  real(8),dimension(1:n) :: a

  do i=1,n
     a(i) = 1.
  enddo
end subroutine sub4

program main
  integer,parameter :: n=10
  real(8),dimension(1:9) :: a1
  real(8),dimension(1:10) :: a2
  real(8),dimension(1:11) :: a3
  real(8),dimension(1:n) :: a4

  a1 = 0.
  a2 = 0.
  a3 = 0.
  a4 = 0.

  call sub1(a1,9)
  call sub2(a2,10)
  call sub3(a3,11)
  call sub4(a4,n)

  do i=1,9
     if (a1(i) .ne. 1.) then
        print *, "ng"
     endif
  enddo

  do i=1,10
     if (a2(i) .ne. 1.) then
        print *, "ng"
     endif
  enddo

  do i=1,11
     if (a3(i) .ne. 1.) then
        print *, "ng"
     endif
  enddo

  do i=1,n
     if (a4(i) .ne. 1.) then
        print *, "ng"
     endif
  enddo

  print *, "ok"
end program main
