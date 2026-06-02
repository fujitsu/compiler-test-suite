integer :: a(3,4)
call sub1(a)
contains
subroutine sub1(x)
  character (len=10), dimension(10) :: string
  integer, dimension(5) :: indim
  integer,dimension(-1:,:) :: x
  string(3:8)(2:4) = 'abc'
  indim(2:3) = 4
  call sub2(x)
  call sub3(string(3:8)(2:4))
  call sub4(indim(2:4))
  print*,"PASS"
end subroutine sub1
subroutine sub2(i)
  integer,volatile,dimension(..) :: i 
  if(rank(i)/= 2)print*,101
end subroutine sub2
subroutine sub3(j)
  character (len=3), volatile,dimension(..) :: j 
  if(rank(j)/= 1)print*,102
end subroutine sub3
subroutine sub4(k)
  integer, volatile,dimension(..) :: k 
  if(rank(k)/=1)print*,103
end subroutine sub4
end

