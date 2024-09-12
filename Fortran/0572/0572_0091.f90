 program pro 
  real(8) :: x=20.0
  associate(asc=>ERFC_SCALED(x))
  if(kind(asc) .ne. 8) print*,"101"
  if(.not.(asc > 0.027 .AND. asc < 0.029)) print*,"102"
  end associate
print*,"pass"
end
