c
      integer*4   i, k, sub
      integer*4   cal(5), ans(5)
      data  ans / 10, 17,  5, 47,  0  /
      parameter (nn= 4)

      k=1
      do 100 i=1, 5
      goto (110, 120, 130, 140), i
      k=k+1
  110 k=k+1
  120 k=k+1
  100 continue
  130 k=k+i
  140 k=k+i
      cal(1) = k

      k=1
      do 200 i=1, 5
      n=sub(i+1)
      goto (210, 220, 230, 240), n
      k=k+1
  210 k=k+1
  220 k=k+1
  230 k=k+1
  240 k=k+1
  200 continue
      cal(2) = k

      k=1
      do 300 i=1, 5
      n=sub(i+1)-3
  310 n=n+1
  320 n=n+2
      goto (310, 320, 330, 340), n
      goto 350
  330 k=k+1
  340 k=k+1
  300 continue
  350 continue
      cal(3) = k

      k=1
      do 400 i=1, 3
      n=sub(i*2)
      goto (410, 420, 430, 410, 420, 430), n
  410 k=k+i*n
  420 k=k+i*n
  430 k=k+i*n
  400 continue
      cal(4) = k


      do 10 i=1, nn
        if (ans(i).eq.cal(i)) then
           print *, i, ' : *** ok ***'
        else
           print *, i, ' : ??? ng ???'
           print *, '   cal = ', cal(i)
           print *, '   ans = ', ans(i)
        endif
   10 continue
      end

      function sub( i )
      integer*4  sub, i
      sub=i
      end
