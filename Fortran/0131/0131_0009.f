
      integer*4  i, sum, sub5, sub6, sub7, sub8
      integer*1  m1(100)
      integer*2  m2(100)
      integer*4  m4(100)
      integer*4  m8(100)
      integer*4  ans( 10), cal( 10), nn
      data ans  /4995, 840, 840, 396, 565, 565, 775,  65,   0,   0/
      parameter (nn=8)

      call init(m1, m2, m4, m8)

      sum=0
      do 100 i=1, 10
        do 100 j=1,9
          m2(m1(j*10+i))=m8(j*10+i)
          sum=sum+m2(j*10+i)
  100 continue
      cal(1)=sum

      sum=0
      do 200 i=3, 9, 3
        do 200 j=1, 9, 2
          m1(m8(j*10+i))=m2(j*10+i)
          sum=sum+m1(j*10+i)
  200 continue
      cal(2)=sum

      sum=0
      do 300 i=3, 9, 3
        do 300 j=1, 9, 2
          m1(m8(j*10+i))=m2(j*10+i)**m4((j*10+i)/m1(j*10+1))
          sum=sum+m1(j*10+i)
  300 continue
      cal(3)=sum

      sum=0
      do 400 i=1, 3, 2
        do 400 j=1, 3
          m2((j*10+i)*3)=m1(j*10+i)*3
          sum=sum+m2(j*30+i+i+i)
  400 continue
      cal(4)=sum

      cal(5)=sub5(m4)

      cal(6)=sub6(m2)

      cal(7)=sub7(m1, m8)

      cal(8)=sub8(m1, m2, m4, m8)

      do 10 i=1, nn
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

      subroutine init(m1, m2, m4, m8)
      integer*1  m1(100)
      integer*2  m2(100)
      integer*4  m4(100)
      integer*4  m8(100)
      do 100 i=1, 100
       m1(i)=i
       m2(i)=i
       m4(i)=i
  100  m8(i)=i
      end

      function sub5( m4 )
      integer*4 sub5, m4(100)
      sub5=0
      do 100 i=1, 10
          sub5=sub5+m4(i)+m4(i+10)+m4(i+30)
  100 continue
      end

      function sub6( m2 )
      integer*4 sub6
      integer*2  m2(100)
      sub6=0
      do 100 i=1, 10
          sub6=sub6+m2(i)+m2(i+10)+m2(i+30)
  100 continue
      end

      function sub7(m1, m8)
      integer*4 sub7
      integer*1  m1(100)
      integer*4  m8(100)
      sub7=0
      do 100 i=1, 10
          sub7=sub7+m1(i)+m1(i+10)+m1(i+30)+m8(i)+m8(i+10)
  100 continue
      end

      function sub8(m1, m2, m4, m8)
      integer*4 sub8
      integer*1  m1(100)
      integer*2  m2(100)
      integer*4  m4(100)
      integer*4  m8(100)
      sub8=0
      do 100 i=1, 10
          m1(i)=m1(i)*m2(i)/m8(i)/m4(i)
          sub8=sub8+m1(i)+m8(i)
  100 continue
      end
