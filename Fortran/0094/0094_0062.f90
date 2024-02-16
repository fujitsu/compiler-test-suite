 program pro 
  real(8)::x=2.0
  associate(asc=>BESSEL_Y0(x))
  if(kind(asc) .ne. 8) print*,"101"
  if(.not. (asc > 0.50 .and. asc < 0.54)) print*,"102"
  end associate
print*,"pass"
end
