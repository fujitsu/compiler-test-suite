subroutine foo(src)
  real(kind=8),dimension(1:10000) :: src
  do i=1,10000
     src(i) = i*i;
  end do
end subroutine foo

program main
  print *, "OK"
 end
