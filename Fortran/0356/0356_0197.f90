program main
  integer(kind=4) :: n
  integer(kind=4),dimension(10) :: s1
  integer(kind=4),dimension(100) :: a
  logical(kind=4),dimension(100) :: l1,l2,l3,l4
  integer(kind=4) :: res1,res2,res3,res4,res5,res6,res7
  data s1/10*1/,a/90*1,1,2,3,4,5,6,7,8,9,0/
  data l1/5*.false.,45*.true.,45*.false.,5*.true./
  data l2/100*.false./,l3/5*.false.,45*.true.,50*.false./
  data l4/95*.false.,5*.true./
  data res1/0/,res2/1/,res3/1/,res4/9/,res5/1/,res6/6/,res7/1/
  do i=1,100
     if (l1(i)) then
        s1(1) = min(s1(1),a(i))
     endif
  enddo
  if (s1(1).eq.res1) then
     print*, "OK"
  else
     print*, "NG1 : ",s1
  endif

  do i=1,100
     if (l2(i)) then
        s1(2) = max(s1(2),a(i))
     endif
  enddo
  if (s1(2).eq.res2) then
     print*, "OK"
  else
     print*, "NG2 : ",s1
  endif

  do i=1,100
     if (l3(i)) then
        s1(3) = min(s1(3),a(i))
     endif
  enddo
  if (s1(3).eq.res3) then
     print*, "OK"
  else
     print*, "NG3 : ",s1
  endif

  do i=1,100
     if (l4(i)) then
        s1(4) = max(s1(4),a(i))
     endif
  enddo
  if (s1(4).eq.res4) then
     print*, "OK"
  else
     print*, "NG4 : ",s1
  endif

  call initzero(n)
  do i=1,n
     if (l1(i)) then
        s1(5) = min(s1(5),a(i))
     endif
  enddo
  if (s1(5).eq.res5) then
     print*, "OK"
  else
     print*, "NG5 : ",s1
  endif

  do i=1,96
     if (l1(i)) then
        s1(6) = max(s1(6),a(i))
     endif
  enddo
  if (s1(6).eq.res6) then
     print*, "OK"
  else
     print*, "NG6 : ",s1
  endif

  do i=1,10
     if (l1(i)) then
        s1(7) = min(s1(7),a(i))
     endif
  enddo
  if (s1(7).eq.res7) then
     print*, "OK"
  else
     print*, "NG7 : ",s1
  endif
end program main

subroutine initzero(n)
  integer(kind=4) :: n
  n = 0
end subroutine
