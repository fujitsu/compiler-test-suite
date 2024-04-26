program main
  integer(kind=4) :: s1
  call total(s1)
end program main

subroutine total(s1)
  integer(kind=4) :: s1,s2,n
  integer(kind=4),dimension(100) :: a
  logical(kind=4),dimension(100) :: l1,l2,l3,l4
  integer(kind=4) :: res1,res2,res3,res4,res5,res6,res7
  integer(kind=4) :: res11,res12,res13,res14,res15,res16,res17
  data a/100*1/,l1/5*.false.,45*.true.,45*.false.,5*.true./
  data l2/100*.false./,l3/5*.false.,45*.true.,50*.false./
  data l4/95*.false.,5*.true./
  data res1/50/,res2/0/,res3/45/,res4/5/,res5/0/,res6/46/,res7/5/
  data res11/51/,res12/1/,res13/46/,res14/6/,res15/1/,res16/47/,res17/6/
  s1 = 0
  s2 = 1
  do i=1,100
     if (l1(i)) then
        s1 = s1 + a(i)
        s2 = s2 + a(i)
     endif
  enddo
  if (s1.eq.res1.and.s2.eq.res11) then
     print*, "OK"
  else
     print*, "NG1 : ",s1,s2
  endif

  s1 = 0
  s2 = 1
  do i=1,100
     if (l2(i)) then
        s1 = s1 + a(i)
        s2 = s2 + a(i)
     endif
  enddo
  if (s1.eq.res2.and.s2.eq.res12) then
     print*, "OK"
  else
     print*, "NG2 : ",s1,s2
  endif

  s1 = 0
  s2 = 1
  do i=1,100
     if (l3(i)) then
        s1 = s1 + a(i)
        s2 = s2 + a(i)
     endif
  enddo
  if (s1.eq.res3.and.s2.eq.res13) then
     print*, "OK"
  else
     print*, "NG3 : ",s1,s2
  endif

  s1 = 0
  s2 = 1
  do i=1,100
     if (l4(i)) then
        s1 = s1 + a(i)
        s2 = s2 + a(i)
     endif
  enddo
  if (s1.eq.res4.and.s2.eq.res14) then
     print*, "OK"
  else
     print*, "NG4 : ",s1,s2
  endif

  s1 = 0
  s2 = 1
  call initzero(n)
  do i=1,n
     if (l1(i)) then
        s1 = s1 + a(i)
        s2 = s2 + a(i)
     endif
  enddo
  if (s1.eq.res5.and.s2.eq.res15) then
     print*, "OK"
  else
     print*, "NG5 : ",s1,s2
  endif

  s1 = 0
  s2 = 1
  do i=1,96
     if (l1(i)) then
        s1 = s1 + a(i)
        s2 = s2 + a(i)
     endif
  enddo
  if (s1.eq.res6.and.s2.eq.res16) then
     print*, "OK"
  else
     print*, "NG6 : ",s1,s2
  endif

  s1 = 0
  s2 = 1
  do i=1,10
     if (l1(i)) then
        s1 = s1 + a(i)
        s2 = s2 + a(i)
     endif
  enddo
  if (s1.eq.res7.and.s2.eq.res17) then
     print*, "OK"
  else
     print*, "NG7 : ",s1,s2
  endif
end subroutine total

subroutine initzero(n)
  integer(kind=4) :: n
  n = 0
end subroutine
