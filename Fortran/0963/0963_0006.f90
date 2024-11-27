  integer, parameter :: i=4
  associate (ii=>i)
  print *,(/(ii,ii=1,4)/)
  end associate
end
