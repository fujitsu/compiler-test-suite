program main
  integer*4 i
  real*4    r
  complex*8 c
  common /xxx/ i, r, c
  call sub()
  print *, i, r, c
end

subroutine sub()
  integer*4 i
  real*4    r
  complex*16 c
  common /xxx/ i, r, c

  i = 1
  r = 2.0
  c = (3.0, 4.0)
end
