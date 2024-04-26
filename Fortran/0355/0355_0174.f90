  real*8 total1,total2,total3
  real*4 a(100),b(100)
  real*4 c(100),d(100)
  real*4 e(100),f(100)
  real*4 tmp1,tmp2,tmp3
  real*8 res1,res2,res3
  data total1/0/,a/100*1/,b/100*2/
  data total2/0/,c/100*1/,d/100*2/
  data total3/0/,e/100*1/,f/100*2/
  data res1/300/,res2/300/,res3/300/

  do i=1,100
     tmp1 = a(i) + b(i)
     total1 = total1 + tmp1
     tmp2 = c(i) + d(i)
     total2 = total2 + tmp2
     tmp3 = e(i) + f(i)
     total3 = total3 + tmp3
  enddo
  if (total1.eq.res1 .and. total2.eq.res2 .and. total3.eq.res3) then
     print*, "OK"
  else
     print*, "NG"
  endif
  stop
  end
