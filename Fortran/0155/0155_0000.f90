program main
  integer(8) :: addr(2), f1, f2

  addr(1) = f1()
  addr(2) = f1()

  addr(1) = f2()
  addr(2) = f2()

  print *,'pass'
end program main

integer(8) function f1()
  block 
    integer, allocatable :: a(:)
    allocate(a(2))
    f1 = loc(a)
    return 
  end block
end function f1

integer(8) function f2()
  block
    integer, allocatable :: a(:)
    allocate(a(2))
    f2 = loc(a)
    block
      return
    end block
  end block
end function f2
