program main
  integer(kind=4) :: n
  real(kind=8) :: s1
  real(kind=8),dimension(100) :: a
  logical(kind=4),dimension(100) :: l1,l2,l3,l4
  real(kind=8) :: res1,res2,res3,res4,res5,res6,res7
  data s1/1/,a/90*1,10*2/,l1/5*.false.,45*.true.,45*.false.,5*.true./
  data l2/100*.false./,l3/5*.false.,45*.true.,50*.false./
  data l4/95*.false.,5*.true./
  data res1/32.0/,res2/1.0/,res3/1.0/,res4/32.0/,res5/1.0/
  data res6/2.0/,res7/1.0/
  do i=1,100
     if (l1(i)) then
        s1 = s1 * a(i)
     endif
  enddo
  if (s1.eq.res1) then
     print*, "OK"
  else
     print*, "NG1 : ",s1
  endif

  s1 = 1
  do i=1,100
     if (l2(i)) then
        s1 = s1 * a(i)
     endif
  enddo
  if (s1.eq.res2) then
     print*, "OK"
  else
     print*, "NG2 : ",s1
  endif

  s1 = 1
  do i=1,100
     if (l3(i)) then
        s1 = s1 * a(i)
     endif
  enddo
  if (s1.eq.res3) then
     print*, "OK"
  else
     print*, "NG3 : ",s1
  endif

  s1 = 1
  do i=1,100
     if (l4(i)) then
        s1 = s1 * a(i)
     endif
  enddo
  if (s1.eq.res4) then
     print*, "OK"
  else
     print*, "NG4 : ",s1
  endif

  s1 = 1
  call initzero(n)
  do i=1,n
     if (l1(i)) then
        s1 = s1 * a(i)
     endif
  enddo
  if (s1.eq.res5) then
     print*, "OK"
  else
     print*, "NG5 : ",s1
  endif

  s1 = 1
  do i=1,96
     if (l1(i)) then
        s1 = s1 * a(i)
     endif
  enddo
  if (s1.eq.res6) then
     print*, "OK"
  else
     print*, "NG6 : ",s1
  endif

  s1 = 1
  do i=1,10
     if (l1(i)) then
        s1 = s1 * a(i)
     endif
  enddo
  if (s1.eq.res7) then
     print*, "OK"
  else
     print*, "NG7 : ",s1
  endif
end program main

subroutine initzero(n)
  integer(kind=4) :: n
  n = 0
end subroutine
