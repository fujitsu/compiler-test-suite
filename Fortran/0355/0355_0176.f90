  real*8 total1
  real*4 a(100),b(100)
  real*8 c(100),d(100)
  real*4 tmp1
  real*8 res1,res2
  data total1/0/,a/100*1/,b/100*2/
  data c/100*1/,d/100*2/
  data res1/300/,res2/2/

  do i=1,100
     tmp1 = a(i) + b(i)
     total1 = total1 + tmp1
     c(i) = d(i)
  enddo
  if (total1.eq.res1.and.c(50).eq.res2) then
     print*, "OK"
  else
     print*, "NG"
  endif
  stop
  end
