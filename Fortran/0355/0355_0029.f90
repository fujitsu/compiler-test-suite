program main
  real(kind=4) a(1000),b(1000)
  b = 1.0
  call sub
  call sub
  call sub
  call sub2(a,b,1000)
  call sub3(a,b,400)
  call sub3(a,b,20)
end program main

subroutine sub
  print *,"sub"
end subroutine sub

subroutine sub2(a,b,n)
  real(kind=4) a(n),b(n)
  do i=1,n
     a(i) = b(i) + 10
  enddo
end subroutine sub2

subroutine sub3(a,b,n)
  real(kind=4) a(n),b(n)
  do i=1,n
     a(i) = b(i) * b(i)
  enddo
end subroutine sub3
