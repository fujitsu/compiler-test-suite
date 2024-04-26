
      integer*4  i, j, f, sub
      character*20 c1, c2, c3, c4(2), c5(2),sub5,sub6
      character    d1*10, d2*20
      integer*4  ans( 10), cal( 10), nn
      data ans  /   1,   1,   1,   1,   1,   1,   0,   0,   0,   0/
      parameter (nn=6)
      data  c1  / '01234567890123456789' /
      data  c2  / '00112233445566778899' /
      data  c3  / 'abcdefghijklmnopqrst' /
      data  c4(1) / '01234567890123456789' /
      data  c4(2) / '12345678901234567890' /
      data  c5(1) / '23456789012345678901' /
      data  c5(2) / '34567890123456789012' /

      f=0
      d1=c1((2**3-7)**2:(2**3-7)*3)//
     +   c3(int(sqrt(9.0))*2:int(sqrt(16.0))*2)//
     +   c2(mod(9,10):10)
      if (d1.eq.'012fgh44  ')  f=1
      cal(1)=f

      f=0
      d1=c1(sub(2)/2:sub(4)/2)//
     +   c2(6/sub(2):12/sub(3))//
     +   c2(3**2:4**2)
      if (d1.eq.'0111445566')  f=1
      cal(2)=f

      f=0
      d1=' '
      do 300 i=1, 5, 2
      j=i
      d2=c1(i:i*2)//c2(i*2:i*3)//
     +   c2(j**2/sub(j**2):j)//
     +   c3(i:j)
 300  continue
      if (d2.eq.'45678945566700112e  ') f=1
      cal(3)=f

      f=0
      call sub4(c1, c2, d2)
      if (d2.eq.'45678945566701234223') f=1
      cal(4)=f

      f=0
      d2=sub5(c1, c2)
      if (d2.eq.'456789455601234223  ') f=1
      cal(5)=f

      f=0
      d2=sub6(c4, c5)
      if (d2.eq.'12345678901234567890') f=1
      cal(6)=f

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

      function sub( i )
      integer*4 sub, i
      sub=i
      end

      subroutine sub4(c1, c2, d2)
      character*20 c1, c2, d2
      integer*4    i, j, sub
      do 100 i=1, 5, 2
         j=i**2/sub(i**2)*i
         d2=c1(i:i*2)//c2(i*2:i*3)//
     +      c1(j**2/sub(j**2):j)//
     +      c2(i:j+2)
 100  continue
      end

      function sub5(c1, c2)
      character*20 sub5, c1, c2
      character*10 sub51
      integer*4    i, j, sub
      do 100 i=1, 5, 2
         j=i**2/sub(i**2)*i
         sub5=sub51(c1(i:i*2),c2(i*2:i*3))//
     +        sub51(c1(j**2/sub(j**2):j),c2(i:j+2))
 100  continue
      end

      function sub51(a, b)
      character*(*) sub51, a, b
      do 100 i=1, 5, 2
         if (a.eq.b) then
           sub51=b//a
         else
           sub51=a//b
         endif
  100 continue
      end

      function sub6(a, b)
      character*(*) sub6, a(2), b(2)
      do 100 i=1, 2
         if (a(i).eq.b(i)) then
           sub6=b(i)//a(i)
         else
           sub6=a(i)//b(i)
         endif
  100 continue
      end
