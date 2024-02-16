module mod
  integer,parameter::N = 512
  type str1
     integer(kind=4),dimension(N) :: a
  end type str1
  type str2
     integer(kind=8) :: b
  end type str2
end module mod

subroutine sub(m)
  use mod
  type(str1) :: stra

  integer::m,i
  do i=1, m
     stra%a(i) = i
  end do
  print *, stra
end subroutine sub
subroutine sub2(m)
  use mod
  type(str2) :: strb(2*N)

  integer::m,i
  do i=1, m
     strb(i)%b = i
  end do
  print *, strb
end subroutine sub2

program main
  print *, "OK"
end program main
