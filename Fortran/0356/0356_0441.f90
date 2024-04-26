module mymod
  real(8) x1,x2,x3,x4,x5,x6
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
  if (x1.ne.8 .or. x2.ne.9.or. &
      x3.ne.10 .or. x4.ne.11.or. &
      x5.ne.12 .or. x6.ne.13) then
     write(6,*) "NG",x1,x2,x3,x4,x5,x6
  else
     write(6,*) "ok"
  endif
end program

subroutine sub(dx1,dx2,dx3,dx4,dx5,dx6,n)
  use mymod
  real(8) dx1(n),dx2(n),dx3(n)
  real(8) dx4(n),dx5(n),dx6(n),TMP
  x1=0
  x2=0
  x3=0
  x4=0
  x5=0
  x6=0
  do j = 1, n
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
  return
end subroutine sub
