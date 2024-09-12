
program xyz
  interface
     subroutine sub1(ip)
       integer(kind=8),pointer :: ip
     end subroutine sub1
     subroutine sub2(ia)
       integer(kind=8) :: ia
     end subroutine sub2
  end interface
  integer(kind=8),target :: s1 = 5
  integer(kind=8),target :: s2 = 10
  integer(kind=8),pointer :: p1 => s1
  integer(kind=8),pointer :: p2
  p2 => s2
  s2=1000
  print*,s2
  
  call sub1(p1)
  print *, s1,p1
  call sub2(p1)
  print *, s1,p1
end program xyz

subroutine sub1(ip)
  integer(kind=8),pointer :: ip
  ip = 10
end subroutine sub1

subroutine sub2(ia)
  integer(kind=8) :: ia
  ia = 20
end subroutine sub2
