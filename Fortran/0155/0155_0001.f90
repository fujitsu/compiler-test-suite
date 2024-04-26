program main
  integer(8) :: addr(10)
  do i=1,10
     block
       integer, allocatable :: a(:)
       allocate(a(2))
       addr(i) = loc(a)
       cycle
       print *,11
     end block
     print *,12
  end do
  if (any(addr(2:)/=addr(1))) write(1,*) 13

  do i=1,10
     block
       integer, allocatable :: a(:)
       allocate(a(2))
       addr(i) = loc(a)
       block
         cycle
         print *,21
       end block
       print *,22
     end block
     print *,23
  end do
  if (any(addr(2:)/=addr(1))) write(1,*) 24

  do i=1,10
     block
       block
         integer, allocatable :: a(:)
         allocate(a(2))
         addr(i) = loc(a)
         cycle
         print *,31
       end block
       print *,32
     end block
     print *,33
  end do
  if (any(addr(2:)/=addr(1))) write(1,*) 34
  print *,'pass'
end program main
