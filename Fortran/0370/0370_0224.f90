
program xyz
  interface
     integer(kind=8) function func1 (ip)
       integer(kind=8),pointer :: ip
     end function func1
     integer(kind=8) function func2 (ia)
       integer(kind=8) :: ia
     end function func2
  end interface
  integer(kind=8),target :: s1 = 5
  integer(kind=8),pointer :: p1 => s1

  if (func1(p1) .ne. 15) print *, "NG"
  if (func2(p1) .ne. 20) print *, "NG"

  print *, "OK"
end program xyz

integer(kind=8) function func1 (ip)
  integer(kind=8),pointer :: ip
  func1 = ip+10
end function func1


integer(kind=8) function func2 (ia)
  integer(kind=8) :: ia
  func2 = ia+15
end function func2
