program main
  integer, parameter :: n = 10
  real(8) :: a(n), result(n)
   call sub1(a,result,n,1)
   stop
end program main
subroutine sub1(a,result,n,m)
  real(8) :: a(n), result(n)
  integer :: i,m

   do i = 1, n
      a(i) = i+1
      result(i) = 0
   enddo

  do i = 1, n,m
     result(i) = log(a(i))
  enddo
  write(6,99) result
99 format(5f10.5)
  return
  end
