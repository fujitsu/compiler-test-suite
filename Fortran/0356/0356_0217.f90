program main
  real(kind=8) :: s1
  call total(s1)
end program main
subroutine total(s1)
  integer(kind=8) :: n
  real(kind=8) :: s1
  real(kind=8),dimension(10) :: s2
  real(kind=8),dimension(100) :: a
  logical(kind=4),dimension(100) :: l1,l2,l3,l4
  real(kind=8) :: res1,res2,res3,res4,res5,res6,res7
  real(kind=8) :: res11,res12,res13,res14,res15,res16,res17
  data a/90*1,10*2/,l1/5*.false.,45*.true.,45*.false.,5*.true./
  data l2/100*.false./,l3/5*.false.,45*.true.,50*.false./
  data l4/95*.false.,5*.true./
  data s2/10*2/
  data res1/32.0/,res2/1.0/,res3/1.0/,res4/32.0/,res5/1.0/
  data res6/2.0/,res7/1.0/
  data res11/64.0/,res12/2.0/,res13/2.0/,res14/64.0/,res15/2.0/
  data res16/4.0/,res17/2.0/

  s1 = 1
  do i=1,100
     if (l1(i)) then
        s1 = s1 * a(i)
        s2(1) = s2(1) * a(i)
     endif
  enddo
  if (s1.eq.res1.and.s2(1).eq.res11) then
     print*, "OK"
  else
     print*, "NG1 : ",s1,s2
  endif

  s1 = 1
  do i=1,100
     if (l2(i)) then
        s1 = s1 * a(i)
        s2(2) = s2(2) * a(i)
     endif
  enddo
  if (s1.eq.res2.and.s2(2).eq.res12) then
     print*, "OK"
  else
     print*, "NG2 : ",s1,s2
  endif

  s1 = 1
  do i=1,100
     if (l3(i)) then
        s1 = s1 * a(i)
        s2(3) = s2(3) * a(i)
     endif
  enddo
  if (s1.eq.res3.and.s2(3).eq.res13) then
     print*, "OK"
  else
     print*, "NG3 : ",s1,s2
  endif

  s1 = 1
  do i=1,100
     if (l4(i)) then
        s1 = s1 * a(i)
        s2(4) = s2(4) * a(i)
     endif
  enddo
  if (s1.eq.res4.and.s2(4).eq.res14) then
     print*, "OK"
  else
     print*, "NG4 : ",s1,s2
  endif

  s1 = 1
  call initzero(n)
  do i=1,n
     if (l1(i)) then
        s1 = s1 * a(i)
        s2(5) = s2(5) * a(i)
     endif
  enddo
  if (s1.eq.res5.and.s2(5).eq.res15) then
     print*, "OK"
  else
     print*, "NG5 : ",s1,s2
  endif

  s1 = 1
  do i=1,96
     if (l1(i)) then
        s1 = s1 * a(i)
        s2(6) = s2(6) * a(i)
     endif
  enddo
  if (s1.eq.res6.and.s2(6).eq.res16) then
     print*, "OK"
  else
     print*, "NG6 : ",s1,s2
  endif

  s1 = 1
  do i=1,10
     if (l1(i)) then
        s1 = s1 * a(i)
        s2(7) = s2(7) * a(i)
     endif
  enddo
  if (s1.eq.res7.and.s2(7).eq.res17) then
     print*, "OK"
  else
     print*, "NG7 : ",s1,s2
  endif
end subroutine total

subroutine initzero(n)
  integer(kind=8) :: n
  n = 0
end subroutine
