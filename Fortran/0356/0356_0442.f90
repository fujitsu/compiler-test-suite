module mymod
  real(4) x1,x2,x3,x4,x5,x6
end module

program main
  use mymod
  real(4) dx1(20)/1,8,2,3,7,6,5,4,12*1/
  real(4) dx2(20)/1,2,3,4,8,7,6,5,10*1,1,9/,TMP
  real(4) dx3(20)/1,8,2,3,7,6,5,4,10*1,10,1/
  real(4) dx4(20)/1,8,2,3,7,6,5,11,10*1,1,1/
  real(4) dx5(20)/1,8,2,3,7,6,12,4,10*1,1,1/
  real(4) dx6(20)/1,8,2,3,7,13,5,4,10*1,1,1/
  x1=0
  x2=0
  x3=0
  x4=0
  x5=0
  x6=0
  do j = 1, 20
     TMP = dx1(j)
     if (TMP > x1) x1 = TMP
     TMP = dx2(j)
     if (TMP > x2) x2 = TMP
     TMP = dx3(j)
     if (TMP > x3) x3 = TMP
     TMP = dx4(j)
     if (TMP > x4) x4 = TMP
     TMP = dx5(j)
     if (TMP > x5) x5 = TMP
     TMP = dx6(j)
     if (TMP > x6) x6 = TMP
  end do
  if (x1.ne.8 .or. x2.ne.9.or. &
       x3.ne.10 .or. x4.ne.11.or. &
       x5.ne.12 .or. x6.ne.13) then
     write(6,*) "NG",x1,x2,x3,x4,x5,x6
  else
     write(6,*) "ok"
  endif
end program
