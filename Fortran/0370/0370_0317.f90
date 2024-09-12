  
  integer(kind=8),target,volatile  :: t2 = 4
  integer(kind=8),pointer,volatile :: p1
  integer(kind=8),pointer,volatile :: p2
  data p1 /t2/

  p2=>t2
  print *,p1
  print *,p2

  call sub
end program


subroutine sub ()
  integer(kind=8),target,volatile  :: t2 = 5
  integer(kind=8),pointer,volatile :: p1
  integer(kind=8),pointer,volatile :: p2
  data p1 /t2/
  
  p2=>t2
  print *,p1
  print *,p2
end subroutine sub
