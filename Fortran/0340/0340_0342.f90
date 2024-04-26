subroutine sub(a,b,c,cond)
  real,dimension(100) :: a,b,c
  integer :: cond
  integer :: i
  do i=1,100
     b(i) = 1+b(i)

     if (cond > 50) then
        c(i) = c(i) / 2
     end if

     a(i) = a(i)*2
  end do  
  
end subroutine sub




program main
  real,dimension(100) :: a,b,c
  integer :: k
  k=1
  a=2
  b=1
  c=3
  call sub(a,b,c,k)
  print *,b(1),a(1),c(1)
end program main
