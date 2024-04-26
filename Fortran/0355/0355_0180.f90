  real*8 total1,total2,total3
  real*4 a(100),b(100)
  real*4 c(100),d(100)
  real*4 e(100),f(100)
  real*4 tmp1,tmp2,tmp3
  real*8 aa(100,100)
  integer*8 start(2),end(2)
  data total1/0/,a/100*1/,b/100*2/
  data total2/0/,c/100*1/,d/100*2/
  data total3/0/,e/100*1/,f/100*2/
  aa = 0

  call sub1(start,end)
  do j=start(1),end(1)
     do i=start(2),end(2)
        tmp1 = a(i) + b(i)
        total1 = total1 + tmp1
        tmp2 = c(i) + d(i)
        total2 = total2 + tmp2
        tmp3 = e(i) + f(i)
        total3 = total3 + tmp3
     enddo
     aa(1,j) = aa(1,j) + total1
     aa(2,j) = aa(2,j) + total2
     aa(3,j) = aa(3,j) + total3
  enddo
  print*, aa(1,1),aa(2,2),aa(3,3)
  stop
  end

  subroutine sub1(start,end)
    integer*8 start(2),end(2)
    start = 1
    end = 10
  end subroutine sub1
