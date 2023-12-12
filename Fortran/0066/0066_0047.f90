subroutine sub(b1,c1,b2)
real*4 a1,b1,c1
real*4 b2

a1 = -(b1*c1-b2)
if (a1 .eq. 1) then
  print *, "ok"
else
  print *, "ng"
endif
end subroutine

  real*4 b1,c1,b2
  b1 = 1.0
  b2 = 2.0
  c1 = 3.0
  call sub(b1,b2,c1)
end
