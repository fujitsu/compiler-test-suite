subroutine sub1
  real(kind= 4) :: aa
  real(kind= 4) :: bb
  
  data aa /2.0/
  data bb /b'1000000000000000000000000000000'/

  if (aa.ne.bb) print *,"NG1"
end subroutine sub1

subroutine sub2
  real(kind= 2) :: aa
  real(kind= 2) :: bb
  
  data aa /2.0/
  data bb /b'100000000000000'/

  if (aa.ne.bb) print *,"NG2"
end subroutine sub2

call sub1
call sub2
print *,"OK"
end
