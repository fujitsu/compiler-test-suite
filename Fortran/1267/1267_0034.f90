module mod
contains
  pure function foo( d )
    real , intent(in):: d
    foo = d + 1.0
  end function foo
end module mod
subroutine test(a,b)
  use mod
  real,dimension(1000) :: a,b
  do concurrent(i=1:1000)
     a(i) = a(i) + foo( b(i) )! do concurrent 内の
  enddo
end subroutine test

program main
  real,dimension(1000) :: a,b
  a=1
  b=2
  call test(a,b)
  if (.not.all(a.eq.4)) then
     print *, a
     stop
  end if
  print *, 'PASS'
  
end program main
