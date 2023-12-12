subroutine sub(b1,c1,b2,c2)
real*4 a1,b1,c1
real*4 a2,b2,c2
integer flag

a2 = b2-b1
a1 = c2+c1

flag = 0
if (a1 .eq. 6) then
  if (a2 .eq. 2) then
    flag = 1
  endif
endif
if (flag .eq. 1) then
  print*, "ok"
else
  print*, "ng"
endif
end subroutine

  real*4 b1,c1,b2,c2
  b1 = 1.0
  b2 = 2.0
  c1 = 3.0
  c2 = 4.0
  call sub(b1,b2,c1,c2)
end
