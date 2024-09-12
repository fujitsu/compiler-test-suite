      integer*4  i, j, sum, sub4
      real*4     a
      character  char*20, char2*20
      integer*4  m(100), x
      integer*8  p
      pointer(p,x)
      integer*4  ans( 7), cal( 7)
      data ans  / 110,  10,  55, 110, 110,  10, 110/
      data char / '201816141210 8 6 4 2' /
      data char2/ '2018161412          ' /

      do 1 i=1, 100
         m(i)=i+1
    1 continue
      sum=0
      do 100 i=2, 20, 2
         sum=sum+i
  100 continue
      cal(1)=sum

      sum=0
      do 200 i=1,5
         sum=sum+2
  200 continue
      cal(2)=sum

      sum=0
      do 300 i=2, 20, 2
         a=real(i)/2.0
         sum=sum+int(a)
  300 continue
      cal(3)=sum

      sum=0
      do 400 i=1, 10
         sum=sum+sub4(i)
  400 continue
      cal(4)=sum

      sum=0
      do 500 i=2, 20, 2
         read(char(i-1:i),'(i2)') j
         sum=sum+j
  500 continue
      cal(5)=sum

      sum=0
      do 600 i=2, 20, 2
         if (char2.eq.char(1:i)) sum=sum+i
  600 continue
      cal(6)=sum

      sum=0
      p=loc(i)
      do 700 i=1, 10
         x=m(i)
         sum=sum+i
  700 continue
      cal(7)=sum

      print *, '---  ---'
      do 10 i=1, 7
         if (cal(i).eq.ans(i)) then
            print *, '  ', i, ':   *** ok ***'
         else
            print *, '  ', i, ':   *** ng ***'
            print *, '      cal = ', cal(i)
            print *, '      ans = ', ans(i)
         endif
   10 continue
      print *, '---  ---'

      stop
      end
      function   sub4(i)
      integer*4  sub4, i
      sub4=i*2
      end
