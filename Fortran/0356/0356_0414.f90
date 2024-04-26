module mymod
  real(8) dxmax(6)
end module

program main
  use mymod
  real(8) dx1(10)/1,8,2,3,7,6,5,4,1,1/
  real(8) dx2(10)/1,2,3,4,8,7,6,5,1,9/
  real(8) dx3(10)/1,2,3,4,8,7,6,5,10,1/
  real(8) dx4(10)/1,2,3,4,8,7,6,11,1,1/
  real(8) dx5(10)/1,2,3,4,8,7,12,5,1,1/
  real(8) dx6(10)/1,2,3,4,8,7,13,5,1,9/
  call sub(dx1,dx2,dx3,dx4,dx5,dx6,10)
  if (dxmax(1).ne.8 .or. dxmax(2).ne.9.or. &
      dxmax(3).ne.10 .or. dxmax(4).ne.11.or. &
      dxmax(5).ne.12 .or. dxmax(6).ne.13) then
     write(6,*) "NG",dxmax
  else
     write(6,*) "ok"
  endif
end program

subroutine sub(dx1,dx2,dx3,dx4,dx5,dx6,n)
  use mymod
  real(8) dx1(n),dx2(n),dx3(n)
  real(8) dx4(n),dx5(n),dx6(n),TMP
  dxmax(1) = 0
  dxmax(2) = 0
  dxmax(3) = 0
  dxmax(4) = 0
  dxmax(5) = 0
  dxmax(6) = 0
  do j = 1, n
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
  return
end subroutine sub
