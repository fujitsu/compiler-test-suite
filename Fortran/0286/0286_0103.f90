subroutine bar(a,c)
  implicit none
  integer(kind=4) :: a, c

  if (a .eq. 0) then
     print *, ""
  endif

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
end subroutine bar


program main
  integer(kind=4) :: c, i
  integer, dimension(10) :: res /1,2,2,3,3,4,4,5,5,5/
  do i=1,10
     call bar(i, c)
     if (c .ne. res(i)) then
        print *, "NG"
        stop
     endif
  enddo
  print *, "OK"
end
