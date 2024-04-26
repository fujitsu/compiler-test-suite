      integer*4  i, sum
      real*4     a, b, c
      integer*4  m1(1000), m2(1000), m3(1000)
      integer*4  sub3, sub4, sub5, sub6
      integer ans( 6), cal( 6)
      data ans/ 465, 110, 330,  55,  55,  55/


      do 1 i=1, 1000
         m1(i)=i
         m2(i)=i
         m3(i)=i
    1 continue

      sum=0
      call sub1(sum, m1)
      cal(1)=sum

      sum=0
      call sub2(sum, m1, m2, m3)
      cal(2)=sum

      a=1.0
      b=2.0
      c=3.0
      cal(3)=sub3(m1, a, b, c)

      cal(4)=sub4(m1, i)

      cal(5)=sub5(m1)

      cal(6)=sub6(m1)

      do 10 i=1,6
         if (cal(i).eq.ans(i)) then
            print *, '  ', i, ':   *** ok ***'
         else
            print *, '  ', i, ':   *** ng ***'
            print *, '      cal = ', cal(i)
            print *, '      ans = ', ans(i)
         endif
   10 continue

      stop
      end

      subroutine sub1(sum, m1)
      integer*4  sum, m1(1000)
      do 10 i=1, 10
        sum=sum+m1(i)+m1(i+10)+m1(i+20)
   10 continue
      end

      subroutine sub2(sum, m1, m2, m3)
      integer*4  sum, m1(1000), m2(1000), m3(1000)
      do 10 i=1, 10
        sum=sum+m1(i)*m2(i)/m3(i)+m1(i)
   10 continue
      end

      function   sub3(m1, a, b, c)
      integer*4  sub3, m1(1000)
      real*4     a, b, c
      integer*4  tmp1, tmp2, tmp3
      sub3=0
      do 10 i=1, 10
        tmp1=m1(i)*a
        tmp2=m1(i)*b
        tmp3=m1(i)*c
        sub3=sub3+tmp1+tmp2+tmp3
   10 continue
      end

      function   sub4(m1, i)
      integer*4  sub4, m1(1000), i
      sub4=0
      do 10 i=1, 10
        sub4=sub4+m1(i)
   10 continue
      end

      function   sub5(m1)
      integer*4  sub5, m1(1000)
      integer*4  sub5s, tmp
      sub5=0
      do 10 i=1, 10
        tmp=sub5s(i)-m1(i)
        sub5=sub5+sub5s(i)-m1(i)
   10 continue
      end

      function   sub5s(i)
      integer*4  sub5s, i
        sub5s=i*2
      end

      function   sub6(m1)
      integer*4  sub6, m1(1000)
      integer*4  sub6s
      sub6=0
      do 10 i=1, 10
        sub6=sub6+sub6s(m1, i)
   10 continue
      end

      function   sub6s(m1, i)
      integer*4  sub6s, m1(1000), i
        sub6s=i*2-m1(i)
      end
