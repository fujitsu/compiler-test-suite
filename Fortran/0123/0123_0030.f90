subroutine sub1
  real(kind= 4) :: aa
  real(kind= 4) :: bb
  
  data aa /2.0/
  data bb /o'10000000000'/

  if (aa.ne.bb) print *,"NG"
end subroutine sub1

subroutine sub2
  real(kind= 2) :: aa
  real(kind= 2) :: bb
  
  data aa /2.0/
  data bb /o'40000'/

  if (aa.ne.bb) print *,"NG"
end subroutine sub2

call sub1
call sub2
print *,"OK"
end
