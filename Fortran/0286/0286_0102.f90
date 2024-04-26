subroutine bar(a,b,c)
  implicit none
  integer(kind=4) :: a, b, c
  select case ( a )
  case (0)
     c = 1
  case (1)
     c = 1
  case (2)
     c = 2
  case (3)
     c = 2
  case (4)
     c = 3
  case (5)
     c = 3
  case (6)
     c = 4
  case (7)
     c = 4
  case (8)
     c = 5
  case default
     c = 5
  end select

  select case ( b )
  case (0)
     c = c + 1
  case (1)
     c = c + 1
  case (2)
     c = c + 2
  case (3)
     c = c + 2
  case (4)
     c = c + 3
  case (5)
     c = c + 3
  case (6)
     c = c + 4
  case (7)
     c = c + 4
  case (8)
     c = c + 5
  case default
     c = c + 5
  end select
end subroutine bar


program main
  integer(kind=4) :: c, i
  integer, dimension(10) :: res /2,4,4,6,6,8,8,10,10,10/
  do i=1,10
     call bar(i, i, c)
     if (c .ne. res(i)) then
        print *, "NG"
        stop
     endif
  enddo
  print *, "OK"
end
