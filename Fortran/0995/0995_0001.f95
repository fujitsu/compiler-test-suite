  type aaa
    integer,allocatable :: a(:)
  end type
  type(aaa),parameter :: x=aaa(null())

  type(aaa) :: y
  parameter (y=aaa(null()))

  end
