 program pro 
  real(8) :: x=2.0
  associate(asc=>BESSEL_J0(x))
  if(kind(asc) .ne. 8) print*,"101"
  if(.not.(asc > 0.21 .AND. asc < 0.23)) print*,"102"
  end associate
print*,"pass"
end
