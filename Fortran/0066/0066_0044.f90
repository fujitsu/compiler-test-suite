subroutine sub(b1,b2,c1,c2, rb1,rb2, rc1, rc2)
real*4 a1,b1,c1
real*4 a2,b2,c2

real*8 ra1,rb1,rc1
real*8 ra2,rb2,rc2

integer flag

a1 = c2+c1
a2 = b2-b1

ra1 = rc2+rc1
ra2 = rb2-rb1
flag = 0
if (a1 .eq. 7) then
  if (a2 .eq. 1) then
    if (ra1 .eq. 15) then
      if (ra2 .eq. 1) then
        flag = 1
      endif
    endif
  endif
endif
if (flag .eq. 1) then
  print *, "ok"
else
  print *, "ng"
endif
end subroutine

  real*4 b1,c1,b2,c2
  real*8 rb1,rb2,rc1,rc2
  b1 = 1.0
  b2 = 2.0
  c1 = 3.0
  c2 = 4.0
  rb1 = 5.0
  rb2 = 6.0
  rc1 = 7.0
  rc2 = 8.0
  call sub(b1,b2,c1,c2,rb1,rb2,rc1,rc2)
end
