program main
  do i=1,4
     block
       integer, allocatable :: x(:)
       allocate(x(2))
       x = [1,2]
       if (any(x/=[1,2])) print *,1
     end block
  end do

  do i=1,4
     block
       integer, allocatable :: x(:)
       if (allocated(x)) print *,2
     end block
  end do

  print *,'pass'
end program main
