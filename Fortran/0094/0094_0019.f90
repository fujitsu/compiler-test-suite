 program pro 
  real(8) :: x=2.0
  associate(asc=>BESSEL_J1(x))
  if(kind(asc) .ne. 8) print*,"101"
  if(.not.(asc > 0.55 .AND. asc < 0.59)) print*,"102"
  end associate
  print*,"pass"
end
