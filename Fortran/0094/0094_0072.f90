 program pro 
  real(8)::x=3.0
  associate(asc=>BESSEL_Y1(x))
  if(kind(asc) .ne. 8) print*,"101"
  if(.not. (asc > 0.30 .and. asc < 0.34)) print*,"102"
  end associate
print*,"pass"
end
