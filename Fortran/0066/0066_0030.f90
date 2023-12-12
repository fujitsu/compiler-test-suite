subroutine sub(b1,c1,c2)
real*8 a1,b1,c1
real*8 a2,c2

a2 = b1*c2
a1 = a2+c1

if (a1 .eq. 6) then
  print *, "ok"
else 
  print *, "ng"
endif
end subroutine

  real*8 b1,b2,c2
  b1 = 1.0
  b2 = 2.0
  c2 = 4.0
  call sub(b1,b2,c2)
end
