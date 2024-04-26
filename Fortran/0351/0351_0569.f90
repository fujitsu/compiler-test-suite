subroutine sub1(a,b,n)
  real(8),dimension(1:n) :: a,b

  do i=1,10
     a(i) = a(i) + b(i)
  enddo
end subroutine sub1

subroutine sub2(a,b,n)
  real(8),dimension(1:n) :: a,b
  
  do i=1,11
     a(i) = a(i) + b(i)
  enddo
end subroutine sub2

subroutine sub3(a,b,n)
  real(8),dimension(1:n) :: a,b
  
  do i=1,100
     a(i) = a(i) + b(i)
  enddo
end subroutine sub3

subroutine sub4(a,b,n)
  real(8),dimension(1:n) :: a,b

  do i=1,3
     a(i) = a(i) + b(i)
  enddo
end subroutine sub4

program main
  integer,parameter :: n=100
  integer,parameter :: ians=124
  real(8),dimension(1:n) :: a,b

  a = 0.
  b = 1.

  call sub1(a,b,n)
  call sub2(a,b,n)
  call sub3(a,b,n)
  call sub4(a,b,n)

  if (int(sum(a)) .eq. ians) then
     print *, "ok"
  else
     print *, "ng : sum a ==", int(sum(a))
  endif
end program main
