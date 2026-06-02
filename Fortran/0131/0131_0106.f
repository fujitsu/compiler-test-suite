      integer*4  i, j, k, l, m, n, sum
      integer*2  g
      real*4     a
      real*8     b, c
      integer ans( 6), cal( 6), dat(10)
      data ans/ 550, 110, 550,  -1,  55,  71/
      data dat/ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10/

      sum=0
      do 100 i=1,10
         do 110 j=1,20
           do 140 k=1, 20
             sum=sum+k
             if (k.eq.10) goto 130
  140      continue
           sum=sum+j
           if (j.eq.10) goto 130
  110    continue
  130    do 120 j=1, k
           l=1
           do 150 while(l.le.10)
             sum=sum+l
  150        l=l+1
  120      sum=sum-j
  100 continue
      cal(1)=sum/10

      sum=0
      do 200 i=1, 10
        do 200 j=1, 10
          do 200 k=1, 10
            do 200 l=1, 10
              do 200 m=1, 10
                n=mod(i+j+k+l, 10)+1
                sum=sum+dat(n)+dat(m)
  200 continue
      cal(2)=sum/10000

      sum=550000
      cal(3)=sum/1000

      sum=0
      do 400 i=1,20
        do 400 j=1,10
          do 400 k=1,10
            do 400 l=1,10
            goto 410
  420         sum=sum+l
  400 continue
  430 continue
      cal(4)=sum
      goto 499

  410 sum=sum-k
      goto 430

  499 continue

      sum=0
      do 500 a=1.0, 10.0
         sum=sum+dat(int(a))
  500 continue
      cal(5)=sum

      sum=0
      do 600 a=1.0, 10.0
         do 610 b=1.0, 10.0
            do 620 c=1.0, 10.0
               do 630 g=1, 10
                  n=mod(int(a)+idint(b)+idint(c)+g, 4)
                  goto (621, 611, 601), n
  630          continue
  621          sum=sum+g
  620       continue
  611       sum=sum+idint(c)
  610    continue
  601    sum=sum+idint(b)
  600 continue
      cal(6)=sum

      print *, '---   ---'
      do 10 i=1,6
         if (cal(i).eq.ans(i)) then
            print *, '  ', i, ':   *** ok ***'
         else
            print *, '  ', i, ':   ??? ng ???'
            print *, '      cal = ', cal(i)
            print *, '      ans = ', ans(i)
         endif
   10 continue
      print *, '---   ---'

      stop
      end
