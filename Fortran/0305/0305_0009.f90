subroutine sub1(a,b,n)
  real(8),dimension(n)::a,b
  integer n

  do i=1,n
     a(i) = b(i)
  end do
end subroutine sub1

program main
  parameter(n=1000)
  parameter(result=1000)
  real(8),dimension(n)::a,b

  b=1

  call sub1(a,b,n)
  if(int(sum(a)) == result)then
     print *,'sub1 : OK'
  else
     print *,'sub1 : NG'
  endif
end program main
