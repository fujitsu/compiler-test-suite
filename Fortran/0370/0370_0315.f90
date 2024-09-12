
program top
  real(kind=8),target,save  :: r1
  real(kind=8),pointer,save :: p1
  data r1 /1.0/
  data p1 /r1/
  
  print *,r1,p1
  call sub
end program top

subroutine sub
  real(kind=8),target,save  :: r1
  real(kind=8),pointer,save :: p1
  data r1 /1.0/
  data p1 /r1/

  print *,r1,p1
end subroutine sub

