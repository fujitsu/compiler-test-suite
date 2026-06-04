      integer i, j, sum
      integer ans( 6), cal( 6)
      data ans/550, 55, 55, 55,265,1100/

      sum=0
      do 100 j=1,10
         do 100 i=1,10
           sum=sum+i
  100 continue
      cal(1)=sum

      sum=0
      i=1
      do 200 while(i.le.10)
           sum=sum+i
           i=i+1
  200 continue
      cal(2)=sum

      sum=55
      cal(3)=sum

      sum=0
      do 400 i=1,20
           sum=sum+i
           if (i.eq.10) goto 410
  400 continue
  410 continue
      cal(4)=sum

      sum=0
      do 500 i=1,20
      if (i.le.10) goto 510
  520 sum=sum+i
  500 continue
      cal(5)=sum
      goto 599
  510 sum=sum+i
      goto 520
  599 continue

      sum=0
      do 600 j=1,10
         do 610 i=1,10
           sum=sum+i
  610    continue
  600 continue
      sum=sum+550
      cal(6)=sum

      print *, '---   ---'
      do 10 i=1,6
         if(cal(i).ne.ans(i)) goto 12
   10 continue

   11 print *, '   *** ok ***'
      goto 13

   12 print *, '   *** ng ***'
      print *, '    i  = ', i
      print *, '   cal = ', cal(i)
      print *, '   ans = ', ans(i)

   13 print *, '---   ---'

      stop
      end
