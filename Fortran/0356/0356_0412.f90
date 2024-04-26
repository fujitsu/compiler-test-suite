module mymod
  real(4) dxmax(2)
end module

program main
  use mymod
  real(4) dx1(20)/1,8,2,3,7,6,5,4,12*1/
  real(4) dx2(20)/1,2,3,4,8,7,6,5,10*1,1,9/,TMP
  dxmax(1) = 0
  dxmax(2) = 0
  do j = 1, 20
     TMP = dx1(j)
     if (TMP > dxmax(1)) dxmax(1) = TMP
     TMP = dx2(j)
     if (TMP > dxmax(2)) dxmax(2) = TMP
  end do
  if (dxmax(1).ne.8 .or. dxmax(2).ne.9) then
     write(6,*) "NG",dxmax
  else
     write(6,*) "ok"
  endif
end program
