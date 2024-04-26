program main
  do i=1,5
  block
    integer,allocatable :: a(:)
    allocate(a(2))
    do j=1,5
      block
        integer,allocatable :: a(:)
        allocate(a(2))
      end block
    end do
  end block
  end do
  print *,'pass'
end program main
