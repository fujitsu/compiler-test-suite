
      integer*4  i, sum, sub7
      integer*4  m1(5000), m2(5000)
      integer*2  m3(5000)
      real*4     m4(5000)
      real*4     a
      integer ans( 7), cal( 7)
      data ans/  55, 150, 210,  55, 220, 330, 820/


      do 1 i=1,5000
         m1(i)=i
         m2(i)=i*2
         m3(i)=i
         m4(i)=real(i)
    1 continue

      sum=0
      do 100 i=1,10
         sum=sum+i
  100 continue
      cal(1)=sum

      sum=0
      do 200 i=1, 10
         sum=sum+m1(1)+m1(2)+m1(3)+m1(4)+m1(5)
  200 continue
      cal(2)=sum

      sum=0
      do 300 i=1, 20
         sum=sum+m1(i)
  300 continue
      cal(3)=sum

      sum=0
      do 400 i=1,10
        sum=sum+m2(i)-m1(i)
  400 continue
      cal(4)=sum

      sum=0
      do 500 a=1.0, 20.0
         sum=sum+m3(i)
  500 continue
      cal(5)=sum

      sum=0
      do 600 a=1.0, 30.0
         sum=sum+m4(i)
  600 continue
      cal(6)=sum

      cal(7)=sub7(m1)

      do 10 i=1,7
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

      function sub7(m1)
      integer*4  sub7, m1(5000)
      integer*4  i, sum

      sum=0
      do 700 i=1, 40
         sum=sum+m1(i)
  700 continue
      sub7=sum
      return
      end
