subroutine sub(n, val, x, y, k1, k2)
  use tmp_mod
  integer :: i,n,x,y,a,b,val
  integer,dimension(1:n) :: k1,k2
  integer,parameter :: res=205
  
  do i=1,n
     if ((k1(i) == 0) .and. (k2(i) == 0)) then 
        a = i * n + x
        b = i * n + y
        call calc(val, a, b)
     endif
  enddo

  if (val .ne. res) then
     print *, "NG"
  endif
  print *, "OK"
end subroutine sub

module tmp_mod
contains
subroutine calc(val, x, y)
  integer, intent(out) :: val
  integer, intent(in) :: x
  integer, intent(in) :: y

  val = x + y
end subroutine calc
end module

program main
  integer :: val
  integer,dimension(1:10) :: k1,k2

  k1=0
  k2=0

  call sub(10, val, 2, 3, k1, k2)
end program main
