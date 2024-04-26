  real*8 total1
  integer*4 a(100),b(100)
  integer*4 tmp1
  real*8 res1
  data total1/0/,a/100*1/,b/100*2/
  data res1/300/

  do i=1,100
     tmp1 = a(i) + b(i)
     total1 = total1 + tmp1
  enddo
  if (total1.eq.res1) then
    print*, "OK"
  else
    print*, "NG"
  endif

  stop
  end
