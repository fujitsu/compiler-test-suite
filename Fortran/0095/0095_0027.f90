 program pro 
  real(8) :: x=3.0
  associate(asc=>LOG_GAMMA(x))
  if(kind(asc) .ne. 8) print*,"101"
  if(.not.(asc > 0.68 .AND. asc < 0.70)) print*,"102"
  end associate
print*,"pass"
end
