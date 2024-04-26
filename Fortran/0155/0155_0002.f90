subroutine s(*)
  return 1
end subroutine s

program main
  integer(8) :: addr(10)
  do i=1,10
     block
       integer, allocatable :: a(:)
       allocate(a(2))
       addr(i) = loc(a)
       call s(*1)
       print *,1
     end block
1    addr(i) = addr(i)
  end do
  print *,'pass'
end program main
