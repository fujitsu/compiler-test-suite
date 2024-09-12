  type tp1
     integer(kind=4),allocatable :: aaa(:)
     integer(kind=8) :: bbb = 5
     integer(kind=1),pointer :: ccc => NULL()
     integer(kind=1),pointer :: ddd
  end type tp1

  type(tp1) tt

  allocate(tt%aaa(5))
  allocate(tt%ccc)
  allocate(tt%ddd)
  tt%aaa(1) = 0
  tt%aaa(2) = 0
  tt%aaa(3) = 3
  tt%aaa(4) = 0
  tt%aaa(5) = 0

  print *, tt%aaa
  print *, tt%bbb
  tt%ccc = 0
  print *, tt%ccc
  tt%ddd = 0
  print *, tt%ddd

  tt%ddd = 10
  print *, tt%ddd

end

