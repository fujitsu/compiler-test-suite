 program pro 
  integer :: n1=2
  real(8) :: x=1.0
  associate(asc=>BESSEL_JN(n1,x))
  if(kind(asc) .ne. 8) print*,"101"
  if(.not.(asc > 0.10 .AND. asc < 0.13)) print*,"102",asc
  end associate
print*,"pass"
end
