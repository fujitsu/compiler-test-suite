program main
  call s1
  call s2
  call s3
  call s4
  call s5
  call s6
  call s7
  print *,'pass'
end program main

subroutine s1
  integer(8) :: addr(10)
  do i=1,10
     block
       integer, allocatable :: a(:)
       allocate(a(2))
       addr(i) = loc(a)
       open(1,form='unformatted')
       read(1,*,err=1)
       print *,11
     end block
1    addr(i) = addr(i)
  end do
end subroutine s1

subroutine s2
  integer(8) :: addr(10)
  do i=1,10
     block
       integer, allocatable :: a(:)
       allocate(a(2))
       addr(i) = loc(a)
       open(1,form='unformatted')
       write(1,*,err=1)
       print *,21
     end block
1    addr(i) = addr(i)
  end do
end subroutine s2

subroutine s3
  integer(8) :: addr(10)
  do i=1,10
     block
       integer, allocatable :: a(:)
       allocate(a(2))
       addr(i) = loc(a)
       k=-1
       backspace(k,err=1)
       print *,31
     end block
1    addr(i) = addr(i)
  end do
end subroutine s3

subroutine s4
  integer(8) :: addr(10)
  do i=1,10
     block
       integer, allocatable :: a(:)
       allocate(a(2))
       addr(i) = loc(a)
       k=-1
       endfile(k,err=1)
       print *,41
     end block
1    addr(i) = addr(i)
  end do
end subroutine s4

subroutine s5
  integer(8) :: addr(10)
  do i=1,10
     block
       integer, allocatable :: a(:)
       allocate(a(2))
       addr(i) = loc(a)
       k=-1
       rewind(k,err=1)
       print *,51
     end block
1    addr(i) = addr(i)
  end do
end subroutine s5

subroutine s6
  integer(8) :: addr(10)
  do i=1,10
     block
       integer, allocatable :: a(:)
       allocate(a(2))
       addr(i) = loc(a)
       k=-1
       flush(k,err=1)
       print *,61
     end block
1    addr(i) = addr(i)
  end do
end subroutine s6

subroutine s7
  integer(8) :: addr(10)
  do i=1,10
     block
       integer, allocatable :: a(:)
       allocate(a(2))
       addr(i) = loc(a)
       inquire(file='////',err=1)
       print *,71
     end block
1    addr(i) = addr(i)
  end do
end subroutine s7
