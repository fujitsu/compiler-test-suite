module mymod
  real(4) dxmax(6)
end module

program main
  use mymod
  real(4) dx1(20)/1,8,2,3,7,6,5,4,12*1/
  real(4) dx2(20)/1,2,3,4,8,7,6,5,10*1,1,9/,TMP
  real(4) dx3(20)/1,8,2,3,7,6,5,4,10*1,10,1/
  real(4) dx4(20)/1,8,2,3,7,6,5,11,10*1,1,1/
  real(4) dx5(20)/1,8,2,3,7,6,12,4,10*1,1,1/
  real(4) dx6(20)/1,8,2,3,7,13,5,4,10*1,1,1/
  dxmax(1) = 0
  dxmax(2) = 0
  dxmax(3) = 0
  dxmax(4) = 0
  dxmax(5) = 0
  dxmax(6) = 0
  do j = 1, 20
     TMP = dx1(j)
     if (TMP > dxmax(1)) dxmax(1) = TMP
     TMP = dx2(j)
     if (TMP > dxmax(2)) dxmax(2) = TMP
     TMP = dx3(j)
     if (TMP > dxmax(3)) dxmax(3) = TMP
     TMP = dx4(j)
     if (TMP > dxmax(4)) dxmax(4) = TMP
     TMP = dx5(j)
     if (TMP > dxmax(5)) dxmax(5) = TMP
     TMP = dx6(j)
     if (TMP > dxmax(6)) dxmax(6) = TMP
  end do
  if (dxmax(1).ne.8 .or. dxmax(2).ne.9.or. &
       dxmax(3).ne.10 .or. dxmax(4).ne.11.or. &
       dxmax(5).ne.12 .or. dxmax(6).ne.13) then
     write(6,*) "NG",dxmax
  else
     write(6,*) "ok"
  endif
end program
