subroutine s01(k)
  integer a1(max(k,10000))
  call ss(loc(a1))
end subroutine s01

program main
  do k=1,1000
     call s01(k)
  end do
  print *,'pass'
end program main

subroutine ss(n)
  integer(8)::n,x
  allocatable :: x
  allocate(x)
  x=max(n,0)
end subroutine ss
